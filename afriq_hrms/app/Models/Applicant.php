<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use KirschbaumDevelopment\NovaMail\Traits\Mailable;

class Applicant extends Model
{
    use HasFactory;


    use Mailable;

    /**
     * Get the name of the email field for the model.
     *
     * @return string
     */
    public function getEmailField(): string
    {
        return 'email';
    }


    protected $fillable = [
        'first_name',
        'last_name',
        'full_name',
        'email',
        'dob',
        'years_of_experience',
        'status',
        'job_application_id'
    ];

    protected $casts = [
        'dob' => 'date', 
    ];

    protected static function boot() 
    {
        parent::boot();

        static::saving(function ($applicant) {
            $applicant->full_name = $applicant->first_name . ' ' . $applicant->last_name;
        });
    }

    protected $attributes = [
        'status' => 'sent',
];


    public function jobApplication() 
    {
        return $this->belongsTo(JobApplication::class);
    }
    public function documents() 
    {
        return $this->hasMany(Document::class);
    }
}