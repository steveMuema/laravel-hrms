<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
//models
use App\Models\Document;

class DocumentstableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $doc = Document::Create([
            'name'      => 'handbook.pdf',
            'url'       => 'handbook.pdf',
            'status'    => 1,
        ]);
        $doc = Document::Create([
            'name'      => 'handbook2.pdf',
            'url'       => 'handbook2.pdf',
            'status'    => 1,
        ]);
    }
}