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
            'Pusat Pengembangan Sumber Daya Kemetrologian',
        ];

        foreach ($sites as $site) {
            Site::create(['site_name' => $site]);
        }
    }
}
