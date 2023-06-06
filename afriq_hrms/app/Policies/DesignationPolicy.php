<?php

namespace App\Policies;

use App\Models\Designation;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class DesignationPolicy
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
        return $user->can('view designations');
    }

    /**
     * Determine whether the user can view the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Designation  $designation
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function view(User $user, Designation $designation)
    {
        return $user->can('view designations details');
    }

    /**
     * Determine whether the user can create models.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function create(User $user)
    {
        return $user->can('create designations');
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Designation  $designation
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function update(User $user, Designation $designation)
    {
        return $user->can('edit designations');
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Designation  $designation
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function delete(User $user, Designation $designation)
    {
        return $user->can('delete designations');
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Designation  $designation
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function restore(User $user, Designation $designation)
    {
        return $user->can('restore designations');
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Designation  $designation
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function forceDelete(User $user, Designation $designation)
    {
        return $user->can('force delete designations');
    }
}