<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Salary extends Model
{
    use HasFactory;
    protected $dates = ['deleted_at'];
    protected $fillable = [
        'gross_salary', 'basic_salary', 'medical_allowance', 'special_allowance', 'hardship_allowance', 'commuter_allowance', 'overtime_rate', 'paye_deduction', 'staff_id',
    ];

    public function staff(){
        return $this->belongsTo(Staff::class);
    }

    public static function boot()
    {
        parent::boot();
        static::creating(function($salary){
            $staff = Staff::find($salary->staff_id);
            $salary->staff_uuid = $staff->uuid;
            $salary->gross_salary = $salary->basic_salary + $salary->medical_allowance + $salary->special_allowance +
            $salary->hardship_allowance + $salary->commuter_allowance;
        });
    }
}