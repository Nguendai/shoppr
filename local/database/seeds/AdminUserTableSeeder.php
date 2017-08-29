<?php

use Illuminate\Database\Seeder;

class AdminUserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
	    DB::table('admin_users')->insert([
		    'name' => 'SupperAdmin',
		    'email' => 'admin@gmail.com',
		    'password' => bcrypt('123456'),
		    'level'=>1
	    ]);
    }
}
