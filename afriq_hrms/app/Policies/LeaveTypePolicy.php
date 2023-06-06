<?php

namespace App\Policies;

use App\Models\LeaveType;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class LeaveTypePolicy
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
        return $user->can('view leave types');
    }

    /**
     * Determine whether the user can view the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\LeaveType  $leaveType
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function view(User $user, LeaveType $leaveType)
    {
        return $user->can('view leaves types details');

    }

    /**
     * Determine whether the user can create models.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function create(User $user)
    {
        return $user->can('create leave types');
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\LeaveType  $leaveType
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function update(User $user, LeaveType $leaveType)
    {
        return $user->can('edit leave types');
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\LeaveType  $leaveType
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function delete(User $user, LeaveType $leaveType)
    {
        return $user->can('delete leave types');

    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\LeaveType  $leaveType
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function restore(User $user, LeaveType $leaveType)
    {
        return $user->can('restore leave types');

    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\LeaveType  $leaveType
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function forceDelete(User $user, LeaveType $leaveType)
    {
        return $user->can('force delete leave types');
    }
}