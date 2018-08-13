<?php

namespace App\Http\Controllers;

use App\Venue;
use Illuminate\Http\Request;
use TCG\Voyager\Http\Controllers\VoyagerBreadController;

class VenuesController extends VoyagerBreadController
{
    
    public function index()
    {
        $venues = Venue::all();
        $count = $venues->count();
        return view('venues.index', compact('count', 'venues'));
    }

    public function search()
    {
        //
    }
}
