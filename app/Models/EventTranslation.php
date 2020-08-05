<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class EventTranslation extends Model
{
    use Sluggable;

    public $timestamps = false;
    protected $fillable = ['title','slug','description'];
    public function sluggable()
    {
        return [
            'slug' => [
                'source' => 'title',
            ],
        ];
    }
}
