<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;

class Region extends Model
{
    protected $fillable = [
        'country_id',
        'region_name',
        'created_by',
        'updated_by',
    ];

    public function Countries()
    {
        return $this->belongsTo(Country::class,'country_id');
    }
}
