<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;
use Sixceed\Models\Image;
use Cviebrock\EloquentSluggable\Sluggable;

class Album extends Model
{
    use Sluggable;
  	protected $fillable = array('name','slug', 'description','cover_image');

  	public function sluggable()
    {
        return [
            'slug' => [
                'source' => 'name',
            ],
        ];
    }

  	public function Photos()
  	{
    	return $this->hasMany(Image::class);
  	}
}
