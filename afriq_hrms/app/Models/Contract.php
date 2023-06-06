<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contract extends Model
{
    use HasFactory;

    protected $fillable=['start_date', 'end_date'];
    protected $casts =[
        'start_date' => 'date',
        'end_date' => 'date'
    ];

    public function staff()
    {
        return $this->belongsTo(Staff::class);
    }
}
