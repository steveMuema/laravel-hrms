<?php
namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Branch;
class BranchSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $branch = Branch::create([
            'name'         => 'HQ, Ngara',
            'status'       => 1,
            'address'      => 'YTL(Tigoni) Centre, Ngara Road, Nairobi',
            'timing_start' => '14:00:00',
            'timing_off'   => '22:00:00',
            'weekend'      => '["Saturday","Sunday"]',
        ]);

        $branch = Branch::create([
            'name'         => 'Garrisa',
            'status'       => 1,
            'address'      => 'Garrisa',
            'timing_start' => '09:00:00',
            'timing_off'   => '18:00:00',
            'weekend'      => '["Sunday"]',
        ]);

        $branch = Branch::create([
            'name'         => 'Embu',
            'status'       => 1,
            'address'      => 'Embu',
            'timing_start' => '09:00:00',
            'timing_off'   => '18:00:00',
            'weekend'      => '["Sunday"]',
        ]);
        $branch = Branch::create([
            'name'         => 'Wajir',
            'status'       => 1,
            'address'      => 'Wajir',
            'timing_start' => '09:00:00',
            'timing_off'   => '18:00:00',
            'weekend'      => '["Sunday"]',
        ]);
    }
}