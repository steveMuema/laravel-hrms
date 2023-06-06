<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AttendanceBreak extends Model
{
    use HasFactory;
    protected $fillable = [
        'staff_id', 'timestamp_break_start', 'timestamp_break_end', 'comment', 'date', 'status', 'timestamp_in', 'timestamp_out',
    ];
}