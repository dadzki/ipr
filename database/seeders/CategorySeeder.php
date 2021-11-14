<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Category::factory()->count(3)->create()->each(function(Category $category) {
            $counts = [0, random_int(1, 3)];
            $category->children()->saveMany(Category::factory()->count($counts[array_rand($counts)])->create()->each(function(Category $category) {
                $counts = [0, random_int(1, 3)];
                $category->children()->saveMany(Category::factory()->count($counts[array_rand($counts)])->create());
            }));
        });
    }
}
