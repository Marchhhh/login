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
          'email'    => '222@qq.com',
          'password' => '123456',
          'name' => 'admin',
          'remember_token' => 1,
      ]);
        // $this->call(UserTableSeeder::class);
    }
}
