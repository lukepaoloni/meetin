<?php

namespace App\Http\Controllers;

use App\Venue;
use Illuminate\Http\Request;

class VenuesController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(Request $request)
    {
        $venues = Venue::all();
        $count = $venues->count();
        if ($request->ajax()) {
            return $venues->toJson();
        }
        return view('venues.index', compact('count', 'venues'));
    }

    public function show(Venue $venue)
    {
        return view('venues.show', compact('venue'));
    }
}
