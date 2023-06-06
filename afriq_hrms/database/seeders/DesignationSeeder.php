<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DesignationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $designations = [
            ['designation_name' => 'CEO'],
            ['designation_name' => 'Project Coordinator'],
            ['designation_name' => 'Developer'],
            ['designation_name' => 'Account Sales Executive'],
            ['designation_name' => 'Sales Officer'],
            ['designation_name' => 'Customer Care Representative'],
            ['designation_name' => 'Digital Marketing Executive'],
            ['designation_name' => 'Account Sales Executive'],
            ['designation_name' => 'Content Writer'],
            ['designation_name' => 'Digital Marketer'],
            ['designation_name' => 'HR Manager'],
            ['designation_name' => 'HR Officer'],
            ['designation_name' => 'Admin'],
        ];
        DB::table('designations')->insert($designations);
    }
}