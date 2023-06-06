<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AttendanceSummary extends Model
{
    use HasFactory;
    protected $fillable = [
        'staff_uuid', 'first_name','second_name', 'first_time_in', 'last_time_out', 'total_time','overtime',  'date', 'status', 'is_delay', 'first_timestamp_in', 'last_timestamp_out',
    ];

    protected $casts = [
        'date' => 'date',
        'first_time_in' => 'datetime',
        'last_time_out' => 'datetime'
    ];
}