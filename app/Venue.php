<?php

namespace App;


class Venue extends Model
{
    protected $guarded = [];

    public function getMaxStars()
    {
      return 5;
    }
    
    public function meetingRoomDisabledAccess()
    {
        return $this->meeting_room_disabled_access ? 'Yes' : 'No';
    }
    
    public function country()
    {
        return $this->belongsTo(Country::class);
    }
    
    public function features()
    {
        return $this->belongsToMany(Feature::class)->get();
    }
    
    public function reviews()
    {
        return $this->hasMany(Review::class)->where('status', '=', 'approved');
    }
    
    public function rating()
    {
        return sprintf("%.1f", $this->reviews()->average('rating'));
    }

    public function getAddress()
    {
    	$address = [];
    	if (!empty($this->address_1)) {
    		array_push($address, $this->address_1);
    	}
    	if (!empty($this->address_2)) {
    		array_push($address, $this->address_2);
    	}
    	if (!empty($this->city)) {
    		array_push($address, $this->city);
    	}
    	if (!empty($this->post_code)) {
    		array_push($address, $this->post_code);
    	}
    	if (!empty($this->country_id)) {
    		array_push($address, $this->country_id);
    	}
    	return implode(", ", $address);
    }

    public function getAddressAttribute()
    {
        return $this->getAddress();
    }
}
