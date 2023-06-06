<?php

namespace App\Nova;

use Laravel\Nova\Actions\ExportAsCsv;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Http\Requests\NovaRequest;

class Attendance extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\Models\Attendance::class;

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
        'first_name', 'second_name',
    ];


    public static function indexQuery(NovaRequest $request, $query)
    {
        if(!$request->user()->hasRole('super-admin')){
            return $query->where('uuid', $request->user()->uuid);
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
            Text::make('First Name','first_name')
            ->hideWhenCreating()
            ->hideWhenUpdating(),
            Text::make('Second Name','second_name')
            ->hideWhenCreating()
            ->hideWhenUpdating(),
            Text::make('Date & Time',function(){
                $date = explode(' ', $this->date);
                $time = explode(' ', $this->clock_time);
                return $date[0]. ' '. $time[1];
            })
            ->sortable(),
            Text::make('Status', function () {
                if($this->sign_in == 1 && $this->sign_out == 0) 
                {
                    return 'Sign In';
                }
                return 'Sign out';
            })
            ->sortable()
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
        return [
            ExportAsCsv::make()
        ];
    }

}