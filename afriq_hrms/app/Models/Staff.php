<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use KirschbaumDevelopment\NovaMail\Traits\Mailable;
use Spatie\Permission\Traits\HasRoles;
use Symfony\Component\Console\Descriptor\Descriptor;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\Image\Manipulations;
use Spatie\MediaLibrary\MediaCollections\Models\Media;

class Staff extends Model implements HasMedia
{
    use Notifiable;
    use SoftDeletes;
    use Mailable;
    use InteractsWithMedia;

    /**
     * Get the name of the email field for the model.
     *
     * @return string
     */
    public function getEmailField(): string
    {
        return 'email';
    }

    protected $dates = ['deleted_at'];
    protected $appends = ['full_name'];

    protected $table = 'staff';
    
    protected $casts = [
        'date_of_birth' => 'date', 
        'joining_date' => 'date',
        'exit_date' => 'date',
        'created_at' => 'datetime',
        'updated_at' => 'datetime'
    ];
    

    protected $fillable = [
        'firstname', 'department_id', 'lastname', 'contact_no', 'emergency_contact_relationship', 'emergency_contact', 'emergency_contact_address', 'password', 'email', 'personal_email', 'designation', 'status', 'employment_status', 'picture', 'total_salary', 'bonus', 'gross_salary', 'uuid', 'date_of_birth', 'current_address', 'permanent_address', 'city', 'joining_date', 'exit_date', 'branch_id', 'gender', 'deleted_at', 'created_at', 'updated_at',
    ];

    public function getFullNameAttribute()
    {
        return "{$this->firstname} {$this->lastname}";
    }

    public function branch()
    {
        return $this->belongsTo(Branch::class, 'branch_id');
    }

    public function designation()
    {
        return $this->belongsTo(Designation::class, 'designation_id');
    }

    public function attendanceSummary()
    {
        return $this->hasMany('AttendanceSummary')->latest();
    }

    public function attendanceSummaries()
    {
        return $this->hasMany(AttendanceSummary::class);
    }

    public function salary()
    {
        return $this->hasOne(Salary::class, 'staff_id');
    }
    public function workShift()
    {
        return $this->belongsToMany(WorkShift::class);
    }

    public function leaveTypes()
    {
        return $this->belongsToMany(StaffLeaveType::class)
            ->withPivot('status')
            ->withTimestamps();
    }

    public function isAllowed($permission)
    {
        $allowedLists = $this->getDirectPermissions()->pluck('name');

        if ($this->hasRole('admin')) {
            return 1;
        } else {
            foreach ($allowedLists as $allowedPermission) {
                if ($allowedPermission == $permission) {
                    return 1;
                }
            }
        }
    }

    public function department()
    {
        return $this->belongsTo(Department::class, 'department_id');
    }

    public function leaves()
    {
        return $this->hasMany('Leave', 'staff_id');
    }
    public function mails()
    {
        return $this->hasMany(\KirschbaumDevelopment\NovaMail\Models\NovaSentMail::class);
    }

     /**
     * @description get the contract associated with the staff
     */
    public function detail()
    {
        return $this->hasOne(Contract::class);
    }

    public function registerMediaConversions(Media $media = null): void
    {
        $this->addMediaConversion('preview')
            ->width(130)
            ->height(130);
    }

    public function registerMediaCollections(): void
    {
        $this->addMediaCollection('main')->singleFile();
        $this->addMediaCollection('staff_files');
    }

}