<?php

namespace App\Nova;

use App\Models\Applicant as ModelsApplicant;
use App\Nova\Filters\ApplicantStatus;
use Illuminate\Notifications\Notifiable;
use KirschbaumDevelopment\NovaMail\Actions\SendMail;
use Laravel\Nova\Actions\Actionable;
use Laravel\Nova\Fields\BelongsTo;
use Laravel\Nova\Fields\HasMany;
use Laravel\Nova\Fields\Date;
use Laravel\Nova\Fields\Email;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Fields\Number;
use Laravel\Nova\Fields\Select;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Http\Requests\NovaRequest;

class Applicant extends Resource
{
    use Actionable, Notifiable;
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\Models\Applicant::class;

    /**
     * The single value that should be used to represent the resource when being displayed.
     *
     * @var string
     */
    public static $title = 'full_name';

    /**
     * The columns that should be searched.
     *
     * @var array
     */
    public static $search = [
        'id', 'email', 'full_name', 'years_of_experience', 'status'
    ];

    /**
     * Get the fields displayed by the resource.
     *
     * @param  \Laravel\Nova\Http\Requests\NovaRequest  $request
     * @return array
     */
    public function fields(NovaRequest $request)
    {
        return [
            ID::make()->sortable()
                ->hideFromDetail(),
            Text::make('First Name')
                ->rules(['required', 'max:100'])
                ->hideFromDetail()
                ->hideFromIndex(),
            Text::make('Last Name')
                ->rules(['required', 'max:100'])
                ->hideFromDetail()
                ->hideFromIndex(),
            Text::make('Full name')
                ->exceptOnForms(),
            Email::make('Email')
                ->rules(['required', 'max:255', 'email'])
                ->creationRules(['unique:applicants','email']),
            
            BelongsTo::make('JobApplication')->rules('required'),
            Date::make('Date of Birth', 'dob')
                ->rules(['required', 'before:-16 years', 'date'])
                ->hideFromIndex(),
            Select::make('Status')
                ->options([
                    'applied' => 'Applied',
                    'under review' => 'Under Review',
                    'shortlisted' => 'Shortlisted',
                    'successful' => 'Successful',
                    'unsuccessful' => 'Unsuccessful',
                ]),
            Number::make('Years of Experience', 'years_of_experience')
                ->rules('required')->min(0),
            HasMany::make('Documents', 'documents')

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
            new ApplicantStatus,
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
            (new SendMail)->canSee(function ($request) {
                return $request->user()->can(
                    'update', ModelsApplicant::class
                );
            }),
            (new \App\Nova\Actions\ApplicantStatus)->canSee(function ($request) {
                return $request->user()->can(
                    'update', ModelsApplicant::class
                );
            }),
        ];
    }
}