<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Contracts\Translatable as TranslatableContract;
use Astrotomic\Translatable\Translatable;

class Post extends Model implements TranslatableContract
{
    use Translatable;

    public $translatedAttributes = ['slug', 'title','content'];
    protected $fillable = [
        'slug', 
        'title',
        'content',
        'site_id',
        'category_slug',
        'source',
        'file',
        'reporter_id',
        'status_id',
        'created_by',
        'updated_by',
        'published_date',
        'regulation_id',
        'keywords',
        'description'
    ];
    
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
        return $this->belongsTo(Site::class,'site_id');
    }

    public function Categories()
    {
        return $this->belongsTo(ArticleCategory::class,'category_slug','category_slug');
    }

    public function Statuses()
    {
        return $this->belongsTo(Status::class,'status_id');
    }
}
