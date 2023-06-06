<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Attendance extends Model
{
    use HasFactory;
    protected $fillable = [
        'staff_id','first_name','clock_time' ,'last_name', 'time_in', 'sign_in', 'sign_out','date', 'status',
    ];

    protected $casts = [
        'date' => 'date',
        'clock_time' => 'datetime'
    ];

    protected $table  = 'attendances';

    public function staff(){
        return $this->belongsTo(Staff::class, 'staff_id');
    }

    public static function boot()
    {
        parent::boot();

        // static::creating(function ($leave) {
        //     $leave->staff_id = auth()->user()->id;
        // });
        // static::updating(function ($leave) {
        //     $leave->time_out = \Carbon\Carbon::parse(date('Y-m-d H:i:s.u'));
        // });

    }
}