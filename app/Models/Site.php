<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;
use Sixceed\Traits\Uuid;

class Site extends Model
{
    use Uuid;

    protected $fillable = [
        'site_name',
    ];

    public $incrementing = false;
}
