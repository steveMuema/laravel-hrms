<?php

namespace App\Policies;

use App\Models\Document;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class DocumentPolicy
{
    use HandlesAuthorization;

    public function viewAny(User $user)
    {
        return $user->can('view documents');
    }
    public function view(User $user, Document $document)
    {
        return $user->can('view documents details');
        
    }

    public function create(User $user)
    {
        return $user->can('create documents');

    }

    public function update(User $user)
    {
        return $user->can('edit documents');

    }
    public function delete(User $user, Document $document)
    {
        return $user->can('delete documents');
        
    }

    public function restore(User $user)
    {
        return $user->can('restore documents');

    }

    public function forceDelete(User $user)
    {
        return $user->can('force delete documents');

    }
}