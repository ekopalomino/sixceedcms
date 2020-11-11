<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;

class Footer extends Model
{
    protected $fillable = [
        'site_id',
        'urutan',
        'url'
    ];
}
