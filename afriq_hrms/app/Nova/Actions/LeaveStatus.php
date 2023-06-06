<?php

namespace App\Nova\Actions;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Log;
use Laravel\Nova\Actions\Action;
use Laravel\Nova\Fields\ActionFields;
use Laravel\Nova\Fields\Select;
use Laravel\Nova\Http\Requests\NovaRequest;

class LeaveStatus extends Action
{
    use InteractsWithQueue, Queueable;

    /**
     * Perform the action on the given models.
     *-
     * @param  \Laravel\Nova\Fields\ActionFields  $fields
     * @param  \Illuminate\Support\Collection  $models
     * @return mixed
     */
    public function handle(ActionFields $fields, Collection $models)
    {

        if($fields->status === 'approved'){
            foreach($models as $model) {
                $leave_model = \App\Models\Leave::where('id', '=', $model->id)->first();
                $dateto = \Carbon\Carbon::parse($leave_model->dateto);
                $datefrom =  \Carbon\Carbon::parse($leave_model->datefrom);
                $applied_days = $dateto->diffInWeekdays($datefrom) +1;              
                $get_leave = \App\Models\StaffLeaveType::where(['staff_id' => $leave_model->staff_id, 'leave_type_id' => $leave_model->leave_type])->where('remaining_days', '>=', $applied_days)->decrement('remaining_days', $applied_days);
                if($get_leave){
                    $model->update([
                        'status' => $fields->status
                    ]);
                }
                else{
                    $model->update([
                        'status' => 'declined'
                    ]);
                }
            }
        }
        else{
            foreach($models as $model) {
                $model->update([
                'status' => $fields->status
                ]);
            }
        }
        return Action::message('Leave has been successfully updated!');
    }

    /**
     * Get the fields available on the action.
     *
     * @param  \Laravel\Nova\Http\Requests\NovaRequest  $request
     * @return array
     */
    public function fields(NovaRequest $request)
    {
        return [
            Select::make('Status')->options([
                'pending' => 'Pending',
                'approved' => 'Approve',
                'declined' => 'Decline',
            ])->default(function ($request) {
                return 'approved';
            })
        ];
    }
}