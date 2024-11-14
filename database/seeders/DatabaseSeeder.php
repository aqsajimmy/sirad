<?php

namespace Database\Seeders;

use App\Models\Admin\Pengguna;
use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        User::factory(20)->create();

        // Pengguna::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        //     'email' => 'test@example.com',
        //     'email' => 'test@example.com',
        // ]);
    }
}
