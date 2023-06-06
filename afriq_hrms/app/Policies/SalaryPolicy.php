<?php

namespace App\Policies;

use App\Models\Salary;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class SalaryPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any models.
     *
     * @param  \App\Models\Staff  $user
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function viewAny(User $user)
    {
        return $user->can('view all salaries');
    }

    /**
     * Determine whether the user can view the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Salary  $leave
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function view(User $user, Salary $salary)
    {
        if($user->can('view salaries details')){
            return true;
        }
        return $user->id == $salary->staff_id;
    }

    /**
     * Determine whether the user can create models.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function create(User $user)
    {
        if($user->can('create salaries')){
            return true;
        }
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Salary  $salary
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function update(User $user, Salary $salary)
    {
        if($user->can('edit salaries')){
            return true;
        }
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Salary  $salary
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function delete(User $user, Salary $salary)
    {
        if($user->can('delete salaries')){
            return true;
        }
        
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Salary  $salary
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function restore(User $user, Salary $salary)
    {
        if($user->can('restore salaries')){
            return true;
        }
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Salary  $salary
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function forceDelete(User $user, Salary $salary)
    {
        if($user->can('force delete salaries')){
            return true;
        }
    }
}