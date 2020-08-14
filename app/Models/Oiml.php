<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;

class Oiml extends Model
{
    protected $fillable = [
        'category',
        'reference_no',
        'title',
        'link',
    ];
}
