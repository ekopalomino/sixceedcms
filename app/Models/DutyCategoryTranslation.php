<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class DutyCategoryTranslation extends Model
{
    use Sluggable;

    public $timestamps = false;
    protected $fillable = ['slug','category_name'];
    public function sluggable()
    {
        return [
            'slug' => [
                'source' => 'category_name',
            ],
        ];
    }
}
