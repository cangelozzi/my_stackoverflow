<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::view('/', 'home');

// for any routes other then '/', Laravel just return home, if note Laravel views get confuesed with Vue Router paths
Route::view('/{any}', 'home');
Route::view('/{any}/{anything}', 'home');
