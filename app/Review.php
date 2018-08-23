<?php

namespace App;

class Review extends Model
{
    public function venue()
    {
        return $this->hasOne(Venue::class);
    }
}
