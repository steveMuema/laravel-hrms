<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Team extends Model
{
    use HasFactory;
    protected $fillable = [
        'department_id', 'name', 'status',
    ];

    public function department()
    {
        return $this->belongsTo(Department::class, 'department_id');
    }
    public function staff()
    {
        return $this->hasMany(Staff::class, 'staff_id');
    }
}