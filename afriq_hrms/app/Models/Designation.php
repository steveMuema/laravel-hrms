<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Designation extends Model
{
    use HasFactory;
    protected $fillable = [
        'designation_name', 'status',
    ];

    public function staff()
    {
        return $this->hasMany(Staff::class);
    }
    
    public function job()
    {
        return $this->hasMany(Job::class);
    }
}