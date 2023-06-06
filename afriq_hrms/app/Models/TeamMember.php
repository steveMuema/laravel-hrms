<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TeamMember extends Model
{
    use HasFactory;
    protected $fillable = [
        'staff_id', 'team_id',
    ];

    public function staff()
    {
        return $this->hasMany(Staff::class);
    }
    public function team()
    {
        return $this->belongsTo(Team::class);
    }
}