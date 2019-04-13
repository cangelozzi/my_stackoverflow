<?php

use Faker\Generator as Faker;

$factory->define(App\Category::class, function (Faker $faker) {
    $word = $faker->word;

    return [
        'name' => $word,
        'url_category' => str_slug($word)
    ];
});
