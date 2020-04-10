<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
	    return view('pages.home');
    }

    public function search(Request $request)
    {
    	return $request;
		$response = \GoogleMaps::load('placeautocomplete')
           ->setParam([
                'input' => $request,
                'type' => 'geocode',
                'components' => [
                	'country' => 'GB'
                ],
            ])
            ->getResponseByKey('results');
		return($response);
    }
}
