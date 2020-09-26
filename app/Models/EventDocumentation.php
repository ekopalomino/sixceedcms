<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;

class EventDocumentation extends Model
{
    protected $fillable = [
        'event_id',
        'file_title',
        'file',
        'video_id',
        'video_title',
        'thumbnail',
        'thumbnail_small',
        'player',
    ];
}
