<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;
use Sixceed\Models\Image;
use Cviebrock\EloquentSluggable\Sluggable;

class Album extends Model
{
    use Sluggable;
  	protected $fillable = array('name','slug', 'description','cover_image','site_id','created_by','updated_by');

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
      
      public function Creator()
    {
        return $this->belongsTo(User::class,'created_by');
    }

    public function Updater()
    {
        return $this->belongsTo(User::class,'updated_by');
    }

    public function Sites()
    {
        return $this->belongsTo(Site::class,'site_id');
    }
}
