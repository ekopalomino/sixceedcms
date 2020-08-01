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
            'Website Utama',
            'Direktorat Jenderal Perdagangan Dalam Negeri',
            'Direktorat Jenderal Perdagangan Luar Negeri',
            'Direktorat Jenderal Perundingan Perdagangan Internasional',
            'Direktorat Jenderal Perlindungan Konsumen dan Tertib Niaga',
            'Direktorat Jenderal Pengembangan Ekspor Nasional',
            'Badan Pengembangan Pengkajian Perdagangan',
            'Biro Advokasi Perdagangan',
            'Komite Pengamanan Perdagangan',
            'Komite Anti Dumping Indonesia',
            'Inspektorat Jenderal',
            'Pusat Pengembangan Sumber Daya Kemetrologian',
            'Semua Situs',
        ];

        foreach ($sites as $site) {
            Site::create(['site_name' => $site]);
        }
    }
}
