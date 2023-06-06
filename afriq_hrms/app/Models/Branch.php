<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Branch extends Model
{
    use HasFactory;
    
    protected $fillable = [
        'name', 'status', 'address', 'phone_number', 'timing_start', 'timing_off', 'weekend',
    ];

    public function staff()
    {
        return $this->hasMany(Staff::class);
    }
    public function biometric(){
        return $this->hasOne(BiometricDevice::class);
    }
}