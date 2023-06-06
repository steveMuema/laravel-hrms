<?php

namespace App\Nova\Lenses;

use Laravel\Nova\Fields\ID;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Fields\Number;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Laravel\Nova\Http\Requests\LensRequest;
use Laravel\Nova\Http\Requests\NovaRequest;
use Carbon\Carbon;
use Laravel\Nova\Lenses\Lens;

class NetPay extends Lens
{
    /**
     * Get the query builder / paginator for the lens.
     *
     * @param  \Laravel\Nova\Http\Requests\LensRequest  $request
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @return mixed
     */
    public static function query(LensRequest $request, $query)
    {
        $start = Carbon::now()->subMonth();
        $end = Carbon::now();
        
        return $request->withOrdering($request->withFilters(
            $query->select(self::columns())
                  ->join('attendance_summaries', 'salaries.staff_uuid', '=', 'attendance_summaries.staff_uuid')
                  ->whereBetween('attendance_summaries.date',[$start, $end])
                  ->groupBy('attendance_summaries.staff_uuid')
                  
        ));
    }

       /**
     * Get the columns that should be selected.
     *
     * @return array
     */
    protected static function columns()
    {
        // SELECT first_name, second_name, sum(overtime)*150 as overtime_pay FROM `attendance_summaries` WHERE date >= DATE(NOW() - INTERVAL 1 MONTH) GROUP by staff_uuid;
        return [
            'salaries.id',
            'attendance_summaries.staff_uuid',
            'attendance_summaries.first_name',
            'attendance_summaries.second_name',
            'salaries.gross_salary',
            'salaries.paye_deduction',
            DB::raw('sum(attendance_summaries.overtime) * overtime_rate as overtime_pay'),
            DB::raw('(salaries.gross_salary + sum(attendance_summaries.overtime) * overtime_rate) - salaries.paye_deduction as net_pay'),
        ];
    }

    /**
     * Get the fields available to the lens.
     *
     * @param  \Laravel\Nova\Http\Requests\NovaRequest  $request
     * @return array
     */
    public function fields(Request $request)
    {
        return [
            ID::make('ID', 'id'),
            Text::make('Fist Name', 'first_name'),
            Text::make('Last Name', 'second_name'),
            Text::make('Gross Salary', 'gross_salary'),
            Text::make('Paye Deduction', 'paye_deduction'),
            Number::make('Overtime', 'overtime_pay', function ($value) {
                return number_format($value, 2);
            }),
            Number::make('Net Pay', 'net_pay', function ($value) {
                return number_format($value, 2);
            }),
        ];
    }

    /**
     * Get the cards available on the lens.
     *
     * @param  \Laravel\Nova\Http\Requests\NovaRequest  $request
     * @return array
     */
    public function cards(NovaRequest $request)
    {
        return [];
    }

    /**
     * Get the filters available for the lens.
     *
     * @param  \Laravel\Nova\Http\Requests\NovaRequest  $request
     * @return array
     */
    public function filters(NovaRequest $request)
    {
        return [];
    }

    /**
     * Get the actions available on the lens.
     *
     * @param  \Laravel\Nova\Http\Requests\NovaRequest  $request
     * @return array
     */
    public function actions(NovaRequest $request)
    {
        return parent::actions($request);
    }

    /**
     * Get the URI key for the lens.
     *
     * @return string
     */
    public function uriKey()
    {
        return 'netpay';
    }
}