<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class PostTranslation extends Model
{
    use Sluggable;

    public $timestamps = false;
    protected $fillable = ['slug', 'title','content'];
    
    public function sluggable()
    {
        return [
            'slug' => [
                'source' => 'title',
            ],
        ];
    }
}
