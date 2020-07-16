<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    protected $fillable = [
        'country_id',
        'region_id',
        'city_name',
        'created_by',
        'updated_by',
    ];

    public function Countries()
    {
        return $this->belongsTo(Country::class,'country_id');
    }

    public function Region()
    {
        return $this->belongsTo(Region::class,'region_id');
    }
}
