<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
    use HasFactory;
    protected $fillable = [
        'department_name', 'status',
    ];

    public function staff()
    {
        return $this->hasMany(Staff::class);
    }

    public function team()
    {
        return $this->hasMany(Staff::class);
    }

}