<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

/*
this will be for creating Route for pages
Route::get('/', 'PagesController@index');
Route::get('about', 'PagesController@about');
*/

Route::get('home', 'HomeController@index');

Route::get('/', 'WelcomeController@index');

Route::get('teams/{id}', 'HomeController@show');




Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);
