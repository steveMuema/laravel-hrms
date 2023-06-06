<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LeaveType extends Model
{
    use HasFactory;
    protected $fillable = [
        'name', 'amount', 'status',
    ];

    public function staff()
    {
        return $this->belongsToMany(Staff::class)
            ->withTimestamps();
    }
}