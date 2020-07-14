<?php

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;

class PermissionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $permissions = [
            'Can Access Setting',
            'Can Create Setting',
            'Can Edit Setting',
            'Can Delete Setting',
            'Can Access User Database',
            'Can Create User',
            'Can Edit User',
            'Can Delete User',
            'Can Access Activity Log',
            'Can Run Maintenance',
            'Can Access Master Data',
            'Can Create Master Data',
            'Can Edit Master Data',
            'Can Delete Master Data',
            'Can Create Content',
            'Can Edit All Content',
            'Can Delete All Content',
            'Can Publish Content',
            'Can Archieve Content',
        ];

        foreach ($permissions as $permission) {
            Permission::create(['name' => $permission]);
        }
    }
}
