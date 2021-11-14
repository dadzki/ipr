<?php

namespace Database\Factories;

use App\Models\Category;
use Exception;
use Illuminate\Database\Eloquent\Factories\Factory;

class PostsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $categories = Category::all()->toArray();
        if (empty($categories)) {
            throw new Exception('Необходимо заполнить категории');
        }

        $category = $categories[array_rand($categories)];

        return [
            'title' => $this->faker->name(),
            'preview' => $this->faker->imageUrl(),
            'content' => $this->faker->text(150),
            'is_active' => $this->faker->randomElement([1, 0]),
            'category_id' => $category['id'],
        ];
    }


}
