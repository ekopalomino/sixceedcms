<?php

use Illuminate\Database\Seeder;
use Sixceed\Models\Status;

class StatusTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $statuses = [
            'Archieve'
        ];

        foreach ($statuses as $status) {
            Status::create(['status_name' => $status]);
       }
    }
}
