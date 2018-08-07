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

Route::get('/', function () {
	$response = \GoogleMaps::load('placeautocomplete')
               ->setParam([
                    'input'     => 'bretton 12',
                    'type' => 'geocode',
                    'components' => [
                    	'country' => 'GB'
                    ],
                ])
                ->getResponseByKey('results');
	return($response);
    return view('pages.home');
});

Route::get('/venues', function() {
	return view('venues.index');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
