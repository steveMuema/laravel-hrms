<?php

namespace App\Nova;

use App\Models\Staff as ModelsStaff;
use App\Models\User;
use App\Nova\Actions\RevokeStaff;
use App\Nova\Filters\StaffDepartment;
use Illuminate\Notifications\Notifiable;
use KirschbaumDevelopment\NovaMail\Actions\SendMail;
use Laravel\Nova\Actions\Actionable;
use Laravel\Nova\Fields\BelongsTo;
use Laravel\Nova\Fields\BelongsToMany;
use Laravel\Nova\Fields\Date;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Fields\Image;
use Laravel\Nova\Fields\Number;
use Laravel\Nova\Fields\Password;
use Laravel\Nova\Fields\Select;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Http\Requests\NovaRequest;
use Laravel\Nova\Panel;
use Ebess\AdvancedNovaMediaLibrary\Fields\Files;
use Laravel\Nova\Fields\MorphToMany;
use Vyuldashev\NovaPermission\RoleSelect;

class Staff extends Resource
{
    use Actionable, Notifiable;
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\Models\Staff::class;

    /**
     * The single value that should be used to represent the resource when being displayed.
     *
     * @var string
     */

    public function title(){
        return $this->firstname .' '.$this->lastname;
    }

    // sort
    // public static $defaultSort = 'id';

    /**
     * The columns that should be searched.
     *
     * @var array
     */
    public static $search = [
        'id', 'firstname', 'lastname', 'email', 'contact_no', 'identity_no', 'email', 'staff_status'
    ];

    public static function indexQuery(NovaRequest $request, $query)
    {
        if(!$request->user()->hasRole('super-admin')){
            return $query->where('id', $request->user()->id);
        }
        else{
            return $query;
        }
    }

    /**
     * Get the fields displayed by the resource.
     *
     * @param  \Laravel\Nova\Http('department_id')\Requests\NovaRequest  $request
     * @return array
     */
    public function fields(NovaRequest $request)
    {
        return [
            ID::make()->sortable(),
            Image::make('Profile Picture','picture')
                ->hideFromIndex()
                ->maxWidth(150)
                ->disk('public')
                ->disableDownload(),
            Text::make('First Name','firstname')
                ->sortable()
                ->rules(['required', 'max:255']),
            Text::make('Last Name','lastname')
                ->sortable()
                ->rules(['required', 'max:255']),
            Text::make('Email')
                ->sortable()
                ->rules('required', 'email', 'max:254')
                ->creationRules('unique:staff,email')
                ->updateRules('unique:staff,email,{{resourceId}}'),
                
            Password::make('Password')
                ->sortable()
                ->rules(['max:255'])->hideFromIndex()->hideFromDetail(),
            Select::make('Status')
                ->sortable()
                ->rules(['required', 'max:255'])->hideFromIndex()
                ->readonly(function() {
                    return $this->resource->exists;
                })
                ->options([
                    '1' => 'active',
                    '0' => 'inactive'
                ])->displayUsingLabels(),
           
            // RoleSelect::make('Roles', 'roles'),

            new Panel('Personal Information', $this->personalFields()),
            new Panel('Emergency Contact Information', $this->contactFields()),
            new Panel('Address Information', $this->addressFields()),
            new Panel('Work Information', $this->workFields()),
            new Panel('Salary Information', $this->salaryFields()),
            new Panel('Staff Files', $this->staffFiles()),
            // new Panel('Roles & Permissions', function () {
            //     return([
            //         MorphToMany::make('Roles', 'roles', \Vyuldashev\NovaPermission\Role::class),
            //         MorphToMany::make('Permissions', 'permissions', \Vyuldashev\NovaPermission\Permission::class),
            //     ]);
            // })
        ];
    }

    /**
     * Get the contact fields for the resource.
     *
     * @return array
     */
    protected function contactFields() {
        
        return [
            Text::make('Emergency Contact Relationship','emergency_contact_relationship')
                ->sortable()
                ->rules(['required', 'max:255'])->hideFromIndex(),
            Number::make('Emergency Contact','emergency_contact')
                ->sortable()
                ->rules(['required', 'max:255'])->hideFromIndex()->min(0),
        ];
    }

     /**
     * Get the personal fields for the resource.
     *
     * @return array
    */
    protected function personalFields() {
        
        return [
            Text::make('Staff Id', 'uuid')
                ->sortable()
                ->rules(['required', 'max:255']),
            Text::make('Personal Email','personal_email')
                ->sortable()
                ->rules(['required', 'max:255', 'email'])->hideFromIndex(),
            Text::make('Contact No.', 'contact_no')
                ->sortable()
                ->rules(['required', 'max:255']),
            Date::make('Date of Birth','date_of_birth')
                ->sortable()
                ->rules(['required', 'max:255', 'before:-16 years', 'date'])->hideFromIndex(),

            Select::make('Gender','gender')->options([
                'male' => 'Male',
                'female' => 'Female'
            ]),
        ];
    }

    
    /**
     * Get the address fields for the resource.
     *
     * @return array
    */
    protected function addressFields() {
        
        return [

            Text::make('Current Address','current_address')
                ->sortable()
                ->rules(['required', 'max:255'])->hideFromIndex(),
            Text::make('City')
                ->sortable()
                ->rules(['required', 'max:255'])->hideFromIndex(),
            Text::make('Permanent Address','permanent_address')
                ->sortable()
                ->rules(['required', 'max:255'])->hideFromIndex(),
            Text::make('Emergency Contact Address','emergency_contact_address')
                ->sortable()
                ->rules(['required', 'max:255'])->hideFromIndex(),
        ];
    }


    /**
     * Get the salary fields for the resource.
     *
     * @return array
    */
    protected function salaryFields() {
        
        return [
            BelongsTo::make('Salary')->exceptOnForms()->hideFromIndex()->hideFromDetail(),
        ];
    }

    /**
     * Get the work fields for the resource.
     *
     * @return array
     */
    protected function workFields() {
        return [
            Select::make('Work from','type')->options([
                'office' => 'Office',
                'remote' => 'Remote',
                'field' => 'Field'
            ])
                ->sortable()
                ->rules(['required', 'max:255']),
            Select::make('Employment Type','staff_status')
                ->options([
                    'permanent' => 'Permanent',
                    'contract' => 'Contract',
                    'intern' => 'Intern'
                ]),
            BelongsTo::make('Branch'),
            BelongsTo::make('Department'),
            Date::make('Joining','joining_date')
                ->sortable()
                ->readonly(function() {
                    return $this->resource->exists;
                })
                ->rules(['required', 'max:255', 'date'])->hideFromIndex(),
            Date::make('Exit date','exit_date')
                ->sortable()
                ->rules( ['max:255', 'after:joining_date'])->hideFromIndex()->nullable()->exceptOnForms(),
            BelongsTo::make('Designation'),
            BelongsToMany::make('WorkShift')
        ];
    }

    protected function staffFiles(){
        return [
            Files::make('Staff Files', 'staff_files'),
        ];
    }

    /**
     * Get the cards available for the request.
     *
     * @param  \Laravel\Nova\Http\Requests\NovaRequest  $request
     * @return array
     */
    public function cards(NovaRequest $request)
    {
        return [];
    }

    /**
     * Get the filters available for the resource.
     *
     * @param  \Laravel\Nova\Http\Requests\NovaRequest  $request
     * @return array
     */
    public function filters(NovaRequest $request)
    {
        return [
            new Filters\StaffBranch,
            new StaffDepartment
        ];
    }

    /**
     * Get the lenses available for the resource.
     *
     * @param  \Laravel\Nova\Http\Requests\NovaRequest  $request
     * @return array
     */
    public function lenses(NovaRequest $request)
    {
        return [];
    }

    /**
     * Get the actions available for the resource.
     *
     * @param  \Laravel\Nova\Http\Requests\NovaRequest  $request
     * @return array
     */
    public function actions(NovaRequest $request)
    {
        return [
        //    (new SendMail)->canSee(function ($request) {
        //         return $request->user()->can(
        //             'emailAnyAccountProfile', ModelsStaff::class
        //         );
        //     }),
            (new Actions\RevokeStaff)->canSee(function ($request) {
                return $request->user()->can(
                    'update', ModelsStaff::class
                );
            }),
        ];
    }

   
}