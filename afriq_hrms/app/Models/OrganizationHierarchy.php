<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class OrganizationHierarchy extends Model
{
    protected $fillable = [
        'staff_id', 'line_manager_id', 'parent_id',
    ];

    public function staff()
    {
        return $this->belongsTo(Staff::class);
    }

    public function lineManager()
    {
        return $this->belongsTo(Staff::class, 'line_manager_id');
    }

    public function parentStaff()
    {
        return $this->belongsTo(Staff::class, 'parent_id');
    }

    public function childs()
    {
        return $this->hasMany(OrganizationHierarchy::class, 'parent_id', 'staff_id');
    }
}