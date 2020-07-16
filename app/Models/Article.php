<?php

namespace Sixceed\Models;

use Sixceed\Traits\Uuid;
use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Contracts\Translatable as TranslatableContract;
use Astrotomic\Translatable\Translatable;

class Article extends Model
{
    use Uuid, Translatable;

    public $translatedAttributes = ['title', 'content','slug'];
    protected $fillable = ['article_type','category_id', 'reporter_id','source','file','status_id','title','content','slug','created_by','updated_by','active'];

    public $incrementing = false;
}
