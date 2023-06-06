<?php

namespace App\Nova;

use Illuminate\Http\Request;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Fields\BelongsTo;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Http\Requests\NovaRequest;

class StaffLeaveType extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\Models\StaffLeaveType::class;

    /**
     * The single value that should be used to represent the resource when being displayed.
     *
     * @var string
     */
    //sort
    public static $defaultSort = 'leave_type_id';

    public function title(){
        if($this->leave_type_id === 1)
        {
            return 'Annual Leave( remaining - '.$this->remaining_count.')';
        }
        if($this->leave_type_id === 2){
            return 'Sick Leave( remaining - '.$this->remaining_count.')';
        }
        if($this->leave_type_id === 3){
            return 'Casual Leave( remaining - '.$this->remaining_count.')';
        }
        if($this->leave_type_id === 4){
            return 'Maternity Leave( remaining - '.$this->remaining_count.')';
        }
        if($this->leave_type_id === 5){
            return 'Paternity Leave( remaining - '.$this->remaining_count.')';
        }
        if($this->leave_type_id === 6){
            return 'Unpaid Leave( remaining - '.$this->remaining_count.')';
        }
    }
    
    /**
     * The columns that should be searched.
     *
     * @var array
     */
    
    public static $search = [
        'staff_id',
    ];
    

    public static function indexQuery(NovaRequest $request, $query)
    {
        return $query->where('staff_id', $request->user()->id);
    }

    /**
     * Get the fields displayed by the resource.
     *
     * @param  \Laravel\Nova\Http\Requests\NovaRequest  $request
     * @return array
     */
    public function fields(NovaRequest $request)
    {
        return [
            // ID::make()->sortable(),
            BelongsTo::make('LeaveType'),
            BelongsTo::make('Staff'),
            Text::make('count')
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
        return [];
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
        return [];
    }
}