<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
	    DB::table('users')->insert([
		    'name' => 'TuTi',
		    'email' => '123@gmail.com',
		    'password' => bcrypt('123456'),
		     'level'=>1
	    ]);
    }
}
