<?php

namespace App\Policies;

use App\Models\User;
use App\Models\WorkShift;
use Illuminate\Auth\Access\HandlesAuthorization;

class WorkShiftPolicy
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
        return $user->can('view work shifts');
    }

    /**
     * Determine whether the user can view the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\WorkShift  $workShift
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function view(User $user, WorkShift $workShift)
    {
        return $user->can('view work shifts details');
    }

    /**
     * Determine whether the user can create models.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function create(User $user)
    {
        return $user->can('create work shifts');
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\WorkShift  $workShift
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function update(User $user, WorkShift $workShift)
    {
        return $user->can('edit work shifts');
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\WorkShift  $workShift
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function delete(User $user, WorkShift $workShift)
    {
        return $user->can('delete work shifts');
        
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\WorkShift  $workShift
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function restore(User $user, WorkShift $workShift)
    {
        return $user->can('restore work shifts');
        
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\WorkShift  $workShift
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function forceDelete(User $user, WorkShift $workShift)
    {
        return $user->can('force delete work shifts');
        
    }
}