<?php

namespace App\Policies;

use App\Models\Leave;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class LeavePolicy
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
        return $user->can('view leaves');
    }

    /**
     * Determine whether the user can view the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Leave  $leave
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function view(User $user, Leave $leave)
    {
        return $user->can('view leaves details');

    }

    /**
     * Determine whether the user can create models.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function create(User $user)
    {
        return $user->can('create leaves');
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Leave  $leave
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function update(User $user, Leave $leave)
    {
        return $user->can('edit leaves');
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Leave  $leave
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function delete(User $user, Leave $leave)
    {
        return $user->can('delete leaves');

    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Leave  $leave
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function restore(User $user, Leave $leave)
    {
        return $user->can('restore leaves');

    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Leave  $leave
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function forceDelete(User $user, Leave $leave)
    {
        return $user->can('force delete leaves');
    }
}