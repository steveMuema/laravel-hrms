<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Leave extends Model
{
    use HasFactory;
    protected $fillable = [
        'staff_id', 'staff_leave_type','leave_type', 'datefrom', 'dateto', 'hourslogged', 'reason', 'status', 'cc_to', 'point_of_contact', 'description', 'line_manager', 'subject',
    ];

    protected $casts = [
        'datefrom' => 'date',
        'dateto' => 'date',
    ];

    public function leaveType()
    {
        return $this->belongsTo(LeaveType::class, 'leave_type', 'id');
    }

    public function staff()
    {
        return $this->belongsTo(Staff::class, 'staff_id', 'id');
    }

    public function pointOfContact()
    {
        return $this->belongsTo(Staff::class, 'point_of_contact', 'id');
    }

    public function lineManager()
    {
        return $this->belongsTo(Staff::class, 'line_manager', 'id');
    }
    public function copyTo()
    {
        return $this->belongsTo(Staff::class, 'cc_to', 'email');
    }

    public function staffleaveType(){

        
        return $this->HasOneThrough(StaffLeaveType::class, LeaveType::class, 'id', 'leave_type_id');
    }
    
    public static function boot()
    {
        parent::boot();

        static::creating(function ($leave) {
            $leave->staff_id = auth()->user()->id;
        });

    }
}