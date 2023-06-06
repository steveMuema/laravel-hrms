<?php

namespace App\Policies;

use App\Models\AttendanceSummary;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class AttendanceSummaryPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any models.
     *
     * @param  \App\Models\User $user
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function viewAny(User $user)
    {
        return $user->can('view attendance summaries');
    }

    /**
     * Determine whether the user can view the model.
     *
     * @param  \App\Models\User $user
     * @param  \App\Models\AttendanceSummary  $attendanceSummary
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function view(User $user, AttendanceSummary $attendanceSummary)
    {
        return $user->can('view attendance summaries details');
    }

    /**
     * Determine whether the user can create models.
     *
     * @param  \App\Models\User $user
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function create(User $user)
    {
        return $user->can('create attendance summaries');
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\Models\User $user
     * @param  \App\Models\AttendanceSummary  $attendanceSummary
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function update(User $user, AttendanceSummary $attendanceSummary)
    {
        return $user->can('edit attendance summaries');
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\Models\User $user
     * @param  \App\Models\AttendanceSummary  $attendanceSummary
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function delete(User $user, AttendanceSummary $attendanceSummary)
    {
        return $user->can('delete attendance summaries');
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\Models\User $user
     * @param  \App\Models\AttendanceSummary  $attendanceSummary
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function restore(User $user, AttendanceSummary $attendanceSummary)
    {
        return $user->can('restore attendance summaries');
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\Models\User $user
     * @param  \App\Models\AttendanceSummary  $attendanceSummary
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function forceDelete(User $user, AttendanceSummary $attendanceSummary)
    {
        return $user->can('force delete attendance summaries');
        
    }
}