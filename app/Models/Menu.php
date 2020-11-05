<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Contracts\Translatable as TranslatableContract;
use Astrotomic\Translatable\Translatable;

class Menu extends Model
{
    use Translatable;
    public $translatedAttributes = ['title'];
    protected $fillable = [
        'title',
        'link',
        'category_id',
        'parent_id'
    ];
}
