<?php

namespace App\Policies;

use App\Models\Contract;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class ContractPolicy
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
        return $user->can('view contracts');
        
    }

    /**
     * Determine whether the user can view the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Contract  $contract
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function view(User $user, Contract $contract)
    {
        return $user->can('view contracts details');
    }

    /**
     * Determine whether the user can create models.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function create(User $user)
    {
        return $user->can('create contracts');
        
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Contract  $contract
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function update(User $user, Contract $contract)
    {
        return $user->can('edit contracts');
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Contract  $contract
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function delete(User $user, Contract $contract)
    {
        return $user->can('delete contracts');
        
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Contract  $contract
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function restore(User $user, Contract $contract)
    {
        return $user->can('restore contracts');

        
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\Models\User  $user
     * @param  \App\Models\Contract  $contract
     * @return \Illuminate\Auth\Access\Response|bool
     */
    public function forceDelete(User $user, Contract $contract)
    {
        return $user->can('force delete contracts');
        
    }
}
