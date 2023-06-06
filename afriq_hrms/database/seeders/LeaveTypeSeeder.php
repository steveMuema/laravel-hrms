<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\LeaveType;


class LeaveTypeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $leave_type = LeaveType::create([
            'name'   => 'Annual',
            'count'  => '21',
            'status' => '1',
        ]);
        
        $leave_type = LeaveType::create([
            'name'   => 'Sick Leaves',
            'count'  => '30',
            'status' => '1',
        ]);

        $leave_type = LeaveType::create([
            'name'   => 'Casual Leaves',
            'count'  => '7',
            'status' => '1',
        ]);
        $leave_type = LeaveType::create([
            'name'   => 'Maternity',
            'count'  => '90',
            'status' => '1',
        ]);
        $leave_type = LeaveType::create([
            'name'   => 'Partenity',
            'count'  => '14',
            'status' => '1',
        ]);
    }
}