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
            'Main Website',
            'Direktorat Jenderal Pengembangan Ekspor Nasional',
            'Direktorat Jenderal Perundingan Perdagangan Internasional',
            'Direktorat Jenderal Perdagangan Luar Negeri',
            'Direktorat Jenderal Perlindungan Konsumen dan Tertib Niaga',
            'Direktorat Jenderal Perdagangan Dalam Negeri',
        ];

        foreach ($sites as $site) {
            Site::create(['site_name' => $site]);
        }
    }
}
