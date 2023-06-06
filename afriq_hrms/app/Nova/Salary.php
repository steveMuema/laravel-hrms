<?php

namespace App\Nova;

use Illuminate\Http\Request;
use Laravel\Nova\Fields\BelongsTo;
use Laravel\Nova\Fields\HasOne;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Fields\Number;
use App\Nova\Lenses\NetPay;
use Laravel\Nova\Http\Requests\NovaRequest;

class Salary extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\Models\Salary::class;

    /**
     * The single value that should be used to represent the resource when being displayed.
     *
     * @var string
     */
    public static $title = 'gross_salary';

    /**
     * The columns that should be searched.
     *
     * @var array
     */
    public static $search = [
        'id',
    ];

    public static function indexQuery(NovaRequest $request, $query)
    {
        if(!$request->user()->hasRole('super-admin')){
            return $query->where('id', $request->user()->staff_id);
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
            ID::make('ID')->sortable(),
            BelongsTo::make('Staff')->rules('required')->withoutTrashed(),
            //Number::make('Gross salary')->rules('required')->min(0),
            Number::make('Basic salary')->rules('required')->min(0),
            Number::make('Hardship allowance')->rules('required')->nullable()->min(0),
            Number::make('Medical allowance')->nullable()->min(0),
            Number::make('Special allowance')->nullable()->min(0),
            Number::make('Commuter allowance')->nullable()->min(0),
            Number::make('Overtime Rate')->default(0),
            Number::make('Paye deduction')->rules('required')->min(0),
            

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
        return [
            new NetPay
        ];
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