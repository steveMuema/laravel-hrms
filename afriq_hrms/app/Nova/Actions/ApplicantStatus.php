<?php

namespace App\Nova\Actions;

use Exception;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Collection;
use Laravel\Nova\Actions\Action;
use Laravel\Nova\Fields\ActionFields;
use Laravel\Nova\Fields\Select;
use Laravel\Nova\Fields\Text;
use Laravel\Nova\Http\Requests\NovaRequest;

class ApplicantStatus extends Action
{
    use InteractsWithQueue, Queueable;
    
    /**
     * Perform the action on the given models.
     *
     * @param  \Laravel\Nova\Fields\ActionFields  $fields
     * @param  \Illuminate\Support\Collection  $models
     * @return mixed
     */
    public function handle(ActionFields $fields, Collection $models)
    {
        try
        {
            foreach($models as $model) 
            {
                $model->status = $fields->status;
                $model->save();
            };
        return Action::message('Status updated to '.$fields->status.' and email was to sent applicant successfully');
        } catch (Exception $e)
        {
            $this->markAsFailed($model, $e);
            return Action::danger('Something went wrong.');

        }
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
            Select::make('Status', 'status')
                ->options([
                    'applied' => 'Applied',
                    'under review' => 'Under Review',
                    'shortlisted' => 'Shortlisted',
                    'successful' => 'Successful',
                    'unsuccessful' => 'Unsuccessful',
                ])->help(
                    'This applicant will receive and email if status is applied, shortlisted or successful'
                ),
        ];
    }

    /**
     * The displayable name of the action.
     *
     * @var string
     */
    public $name = 'Update Applicant Status';

}
