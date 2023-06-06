<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\StaffLeaveType;


class StaffLeaveTypeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $leave_type = StaffLeaveType::create([
            'staff_id'   => '1',
            'leave_type_id' => '1',
            'count'         => '21',
        ]);

        $leave_type = StaffLeaveType::create([
            'staff_id'   => '1',
            'leave_type_id' => '2',
            'count'         => '21',
        ]);

        $leave_type = StaffLeaveType::create([
            'staff_id'   => '2',
            'leave_type_id' => '1',
            'count'         => '30',
        ]);

        $leave_type = StaffLeaveType::create([
            'staff_id'   => '2',
            'leave_type_id' => '2',
            'count'         => '21',
        ]);
    }
}