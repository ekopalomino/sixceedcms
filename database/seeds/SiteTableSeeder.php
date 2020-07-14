<?php

use Illuminate\Database\Seeder;
use Sixceed\Models\Site;

class SiteTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $sites = [
            'All Site',
        ];

        foreach ($sites as $site) {
            Site::create(['site_name' => $site]);
        }
    }
}
