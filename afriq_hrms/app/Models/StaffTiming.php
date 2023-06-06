<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StaffTiming extends Model
{
    use HasFactory;
    protected $fillable = [
        'staff_id', 'day', 'timing_start', 'timing_off',
    ];

    public function staff()
    {
        return $this->hasMany(Staff::class);
    }
}