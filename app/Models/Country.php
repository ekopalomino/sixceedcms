<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    protected $fillable = [
        'country_name',
        'created_by',
        'updated_by',
    ];
}
