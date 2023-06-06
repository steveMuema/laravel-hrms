<?php

namespace App\Nova;

use Illuminate\Http\Request;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Fields\DateTime;
use Laravel\Nova\Fields\Date;
use Laravel\Nova\Fields\Number;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Http\Requests\NovaRequest;

class AttendanceSummary extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\Models\AttendanceSummary::class;

    /**
     * The single value that should be used to represent the resource when being displayed.
     *
     * @var string
     */
    public static $title = 'id';

    /**
     * The columns that should be searched.
     *
     * @var array
     */
    public static $search = [
        'first_name','second_name','date', 'total_time'
    ];

    public static function indexQuery(NovaRequest $request, $query)
    {
        if(!$request->user()->hasRole('super-admin')){
            return $query->where('staff_uuid', $request->user()->uuid);
        }
        else{
            return $query;
        }
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
            Text::make('First Name', 'first_name')
            ->sortable(),
            Text::make('Second Name', 'second_name')
            ->sortable(),
            Date::make('Date', 'date')
            ->sortable(),
            Text::make('Sign In', function(){
                $time = explode(' ', $this->first_time_in);
                return $time[1];
            }),
            Text::make('Last Signout', function(){
                $time = explode(' ', $this->last_time_out);
                return $time[1];
            }),
            Number::make('Hours Worked', 'total_time')->min(0),
            Number::make('Over Time', 'overtime')
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