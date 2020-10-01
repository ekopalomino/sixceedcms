<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;

class RegionalTradeOffice extends Model
{
    protected $fillable = [
        'city_id',
    	'address',
    	'phone',
    	'fax',
    	'website',
        'official1',
        'official2',
    	'email',
    	'latitude',
        'longitude',
        'created_by',
        'updated_by'
    ];

    public function Cities()
    {
        return $this->belongsTo(City::class,'city_id');
    }

    public function OfficialOne()
    {
        return $this->belongsTo(Official::class,'official_1');
    }

    public function OfficialTwo()
    {
        return $this->belongsTo(Official::class,'official_2');
    }
}
