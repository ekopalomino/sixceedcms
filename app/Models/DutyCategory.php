<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Contracts\Translatable as TranslatableContract;
use Astrotomic\Translatable\Translatable;

class DutyCategory extends Model implements TranslatableContract
{
    use Translatable;

    public $translatedAttributes = ['category_name','slug'];
    protected $fillable = ['category_name','slug','created_by','updated_by','site_id'];
    
    
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
}
