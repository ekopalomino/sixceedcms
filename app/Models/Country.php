<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    protected $fillable = [
        'site_id',
        'country_name',
        'created_by',
        'updated_by',
    ];
}
