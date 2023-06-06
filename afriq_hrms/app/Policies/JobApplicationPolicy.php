<?php

namespace App\Policies;

use App\Models\JobApplication;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class JobApplicationPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any models.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function viewAny(User $user)
    {
        return $user->can('view job applications');
    }

    /**
     * Determine whether the user can view the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\JobApplication  $jobApplication
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function view(User $user, JobApplication $jobApplication)
    {
        return $user->can('view job applications details');
    }

    /**
     * Determine whether the user can create models.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function create(User $user)
    {
        return $user->can('create job applications');
        
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\JobApplication  $jobApplication
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function update(User $user, JobApplication $jobApplication)
    {
        return $user->can('edit job applications');
        
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\JobApplication  $jobApplication
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function delete(User $user, JobApplication $jobApplication)
    {
        return $user->can('delete job applications');        
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\JobApplication  $jobApplication
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function restore(User $user, JobApplication $jobApplication)
    {
        return $user->can('restore job applications');           
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\JobApplication  $jobApplication
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function forceDelete(User $user, JobApplication $jobApplication)
    {
        return $user->can('force delete job applications');
        
    }
}