<?php

namespace App;

class Country extends Model
{
    public function venue()
    {
        return $this->belongsToMany(Venue::class);
    }
}
