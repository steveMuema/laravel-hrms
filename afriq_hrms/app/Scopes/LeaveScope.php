<?php
namespace App\Scopes;
 
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Scope;

use Illuminate\Support\Facades\Auth;
class LeaveScope implements Scope
{
    
    public function apply(Builder $builder, Model $model)
    {            
        // $builder->where([
        //     ['staff_id', '=', auth()->user()->id], 
        //     ['remaining_count', '>', 0]
        // ]);
        
    }
}