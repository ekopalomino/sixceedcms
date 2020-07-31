<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class MainDutyTranslation extends Model
{
    use Sluggable;

    public $timestamps = false;
    protected $fillable = ['slug', 'position','mainduty','function'];
    
    public function sluggable()
    {
        return [
            'slug' => [
                'source' => 'position',
            ],
        ];
    }
}
