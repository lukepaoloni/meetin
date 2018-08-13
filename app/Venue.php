<?php

namespace App;

class Venue extends Eloquent
{
    protected $fillable = ['name',
                           'address_1',
                           'address_2',
                           'post_code',
                           'city',
                           'country_id',
                           'continent',
                           'phone',
                           'email',
                           'url',
                           'rooms',
                           'stars',
                           'bars',
                           'restaraunts',
                           'latitude',
                           'longitude'
    ];
}
