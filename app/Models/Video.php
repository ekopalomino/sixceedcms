<?php

namespace Sixceed\Models;

use Sixceed\Traits\Uuid;
use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class Video extends Model
{
    use Uuid, Sluggable;

    protected $fillable = [
        'video_id',
        'site_id',
        'title',
        'slug',
        'description',
        'thumbnail',
        'thumbnail_small',
        'player',
        'created_by',
        'updated_by'
    ];

    public $incrementing = false;

    public function sluggable()
    {
        return [
            'slug' => [
                'source' => 'title',
            ],
        ];
    }

    public function Sites()
    {
        return $this->belongsTo(Site::class,'site_id');
    }
}
