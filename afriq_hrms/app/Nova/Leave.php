<?php

namespace App\Nova;

use App\Models\StaffLeaveType;
use Illuminate\Http\Request;
use Laravel\Nova\Fields\ID;
use Laravel\Nova\Fields\BelongsTo;
use Laravel\Nova\Fields\Date;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Fields\Select;
use Laravel\Nova\Fields\Textarea;
use Laravel\Nova\Fields\HasOneThrough;
use Laravel\Nova\Fields\BelongsToMany;
use Laravel\Nova\Http\Requests\NovaRequest;
use Illuminate\Support\Facades\DB;
use App\Nova\Actions\LeaveStatus;
use Illuminate\Support\Facades\Auth;

class Leave extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\Models\Leave::class;

    /**
     * The single value that should be used to represent the resource when being displayed.
     *
     * @var string
     */
    public static $title = 'leave_type';

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
        $staff = DB::table('staff')->where('id', '=', auth()->user()->id)->first();
        $time_since_joining = time() - strtotime($staff->joining_date);
        $days_since_joining = $time_since_joining / (60*60*24);
        $arr = [];
        
        if($days_since_joining < 90)
        {
            $arr[''] = 'You do not qualify to apply for the leave, try after ' . 90 - round($days_since_joining). ' days';

        }
        else{
            
            $staff_leave_types = StaffLeaveType::join('leave_types', 
            'leave_type_id', '=', 'leave_types.id'
            )
                ->where('staff_id', '=',  Auth::user()->id)
                ->where('remaining_days', '>', 0)
                ->get();
            if (count($staff_leave_types) == 0) {
                $arr[''] = 'You have exhausted all your leaves';
            }
            foreach($staff_leave_types as $leave_type){
                $arr[$leave_type->leave_type_id] = $leave_type->name.' Leave (remaining '.$leave_type->remaining_days.' days)';
            }
        }

        return [
            ID::make()->sortable()
            ->hideFromIndex()
            ->hideFromDetail(),
            Select::make('Leave Type','leave_type')
            ->options($arr)
            ->hideFromDetail()
            ->hideFromIndex()
            ->rules(['required']),
            BelongsTo::make('Leave Type', 'leaveType')
            ->hideWhenCreating()
            ->hideWhenUpdating()
            ->rules(['required']),
            Date::make('Date From', 'datefrom')
            ->rules(['required']),
            Date::make('Date To', 'dateto')
            ->rules(['required']),
            BelongsTo::make('Point of Contact', 'pointOfContact', Staff::class)
            ->rules(['required'])
            ->withoutTrashed(),
            BelongsTo::make('Line Manager', 'lineManager', Staff::class)
            ->rules(['required'])
            ->withoutTrashed(),
            BelongsTo::make('Copy To (cc)', 'copyTo', Staff::class)
            ->rules(['required'])
            ->withoutTrashed(),
            Text::make('Subject', 'subject')
            ->hideFromIndex()
            ->rules(['required']),
            Textarea::make('Description', 'description')
            ->rules(['required']),
            Select::make('Status', 'status')
             ->options([
                'pedning' => 'Pending',
                'approved' => 'Approved',
                'rejected' => 'Rejected'
             ])
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
            new LeaveStatus
        ];
    }
    /**
     * Get the displayable singular label of the resource.
     *
     * @return string
     */
    public static function singularLabel()
    {
        return __('Leave');
    }
}