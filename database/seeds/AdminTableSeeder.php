<?php

use Illuminate\Database\Seeder;

class AdminTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('tbl_admin')->insert([
            'admin_name' => 'jalis mahamud',
            'admin_email' => 'jalis@gmail.com',
            'admin_password' =>md5('12345'),
            'mobile_number'=>'8801623708711',
            'access_label' =>'1',
            ]);
    }
}
