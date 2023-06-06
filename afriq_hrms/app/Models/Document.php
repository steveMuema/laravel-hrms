<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Document extends Model
{
    use HasFactory;
    protected $fillable = [
        'name', 'url',  'status', 'created_at', 'updated_at',
    ];

    public function applicantsDocument(){
        return $this->belongsTo(Applicant::class, 'applicant_id', 'id');
    }
    
}