<?php


namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(PermissionsSeeder::class); //make it before roles
        $this->call(RoleSeeder::class); //make it before staff
        $this->call(StaffSeeder::class);
        $this->call(DocumentstableSeeder::class);
        $this->call(LeaveTypeSeeder::class);
        $this->call(BranchSeeder::class);
        $this->call(StaffLeaveTypeSeeder::class);
        $this->call(DesignationSeeder::class);
        $this->call(DepartmentSeeder::class);
    }
}