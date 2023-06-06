<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class JobApplication extends Model
{
    use HasFactory;

    protected $fillable=['is_published'];
    protected $casts = [
        'start_date' => 'date',
        'end_date' => 'date'
    ];
    public function applicants() 
    {
        return $this->hasMany('App\Models\Applicant');
    }
}
