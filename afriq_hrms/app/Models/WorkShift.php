<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WorkShift extends Model
{
    use HasFactory;

    protected $fillable = [
        'name', 'staff_id', 'start_date', 'end_date'
    ];
    protected $casts = [
        'start_date'=> 'datetime',
        'end_date' => 'datetime'
    ];

    public function staff(){
        return $this->hasMany(Staff::class);
    }
}
