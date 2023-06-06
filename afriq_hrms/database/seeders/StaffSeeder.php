<?php
namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Staff;
use Spatie\Permission\Models\Role;

class StaffSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $admin = Staff::create([
            'firstname'                      => 'Admin',
            'lastname'                       => '',
            'contact_no'                     => '0123456789',
            'emergency_contact'              => '0123456789',
            'emergency_contact_relationship' => 'brother',
            'password'                       => bcrypt('admin'),
            'identity_no'                    => '1320245699852',
            'date_of_birth'                  => '1978-09-19',
            'email'                 => 'admin@gmail.com',
            'personal_email'                 => 'admin@gmail.com',
            'designation'                    => 'admin',
            'city'                           => 'Nairobi',
            'joining_date'                   => '2021-08-23',
            'branch_id'                      => '1',
            'status'                         => 0,
            //            'staff_status' => 'permanent',
        ]);

        $role = Role::find(1);
        $admin->assignRole($role);

        $hr = Staff::create([
            'firstname'                      => 'Hr',
            'lastname'                       => 'Manager',
            'contact_no'                     => '0123456789',
            'emergency_contact'              => '0123456789',
            'emergency_contact_relationship' => 'brother',
            'password'                       => bcrypt('123456'),
            'identity_no'                    => '1320245699855',
            'date_of_birth'                  => '1988-09-19',
            'email'                 => 'hr@gmail.com',
            'personal_email'                 => 'hr@gmail.com',
            'designation'                    => 'HR Manager',
            'city'                           => 'Nairobi',
            'joining_date'                   => '2021-08-23',
            'gross_salary'                   => 20000,
            'branch_id'                      => 1,
            'department_id'                  => 1,
            'status'                         => 1,
            'staff_status'              => 'permanent',
        ]);

        $role = Role::find(2);
        $hr->assignRole($role);
        $permissions = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25];
        $hr->givePermissionTo($permissions);

        $user = Staff::create([
            'firstname'                      => 'user',
            'lastname'                       => '',
            'contact_no'                     => '0726076333',
            'emergency_contact'              => '0726076333',
            'emergency_contact_relationship' => 'brother',
            'password'                       => bcrypt('123456'),
            'identity_no'                    => '1320245699855',
            'date_of_birth'                  => '1978-09-19',
            'email'                 => 'user@gmail.com',
            'personal_email'                 => 'user@gmail.com',
            'designation'                    => 'Sales',
            'city'                           => 'Nairobi',
            'joining_date'                   => '2021-08-23',
            'gross_salary'                   => 20000,
            'branch_id'                      => 1,
            'department_id'                  => 2,
            'status'                         => 1,
            'staff_status'              => 'permanent',
        ]);
    }
}