<?php

use Faker\Generator as Faker;
use App\Category;

$factory->define(App\Question::class, function (Faker $faker) {
    $title = $faker->sentence;

    return [
         'title' => $title,
        'url_question' => str_slug($title),
        'body' => $faker->text,
        'category_id' => function () {
            return Category::all()->random();
        },
        'user_id' => function () {
            return \App\User::all()->random();
        }
    ];
});
