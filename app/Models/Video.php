<?php

namespace Sixceed\Models;

use Sixceed\Traits\Uuid;
use Illuminate\Database\Eloquent\Model;

class Video extends Model
{
    use Uuid;

    protected $fillable = [
        'video_id',
        'title',
        'slug',
        'description',
        'thumbnail',
        'thumbnail_small',
        'player',
    ];

    public $incrementing = false;
}
