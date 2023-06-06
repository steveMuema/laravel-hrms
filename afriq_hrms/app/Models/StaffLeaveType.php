<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Scopes\LeaveScope;
class StaffLeaveType extends Model
{
    use HasFactory;
    // protected $primaryKey = ['user_id', 'stock_id'];
    public $incrementing = false;

    protected $table = 'staff_leave_type';

    protected $fillable = [
        'staff_id', 'leave_type_id', 'count','remaining_count','status',
    ];
    protected $hidden = ['updated_at', 'created_at'];
    public function leaveType(){
        return $this->belongsTo(LeaveType::class, 'leave_type_id');
    }

    public function staff(){
        return $this->belongsTo(Staff::class);
    }

    protected static function booted()
    {
        static::addGlobalScope(new LeaveScope);
    }
    
}