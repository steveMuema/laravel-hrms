<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Department;
class DepartmentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Department::Create([
            'department_name'      => 'HR',
            'status'               => 1,
        ]);
        Department::Create([
            'department_name'      => 'Accounts',
            'status'               => 1,
        ]);
        Department::Create([
            'department_name'      => 'Sales',
            'status'               => 1,
        ]);
        Department::Create([
            'department_name'      => 'IT',
            'status'               => 1,
        ]);
    }
}