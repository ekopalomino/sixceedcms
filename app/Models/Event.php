<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Contracts\Translatable as TranslatableContract;
use Astrotomic\Translatable\Translatable;

class Event extends Model implements TranslatableContract
{
    use Translatable;

    public $translatedAttributes = ['title','slug','description'];
    protected $fillable = ['site_id','event_type','date_from','date_to','country_id','location','brocure','link','status_id','created_by','updated_by'];
    
    
    public function author()
    {
        return $this->belongsTo(User::class, 'created_by');
    }

    public function editor()
    {
        return $this->belongsTo(User::class, 'updated_by');
    }

    public function Sites()
    {
        return $this->belongsTo(Site::class, 'site_id');
    }

    public function Countries()
    {
        return $this->belongsTo(Country::class, 'country_id');
    }
}
