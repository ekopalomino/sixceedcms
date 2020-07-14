<?php

namespace Sixceed\Models;

use Sixceed\Traits\Uuid;
use Illuminate\Database\Eloquent\Model;

class Status extends Model
{
    use Uuid;

    protected $fillable = [
        'status_name',
    ];

    public $incrementing = false;
}
