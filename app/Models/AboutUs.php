<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Contracts\Translatable as TranslatableContract;
use Astrotomic\Translatable\Translatable;

class AboutUs extends Model implements TranslatableContract
{
    use Translatable;

    public $translatedAttributes = ['welcome_message'];
    protected $fillable = ['welcome_message','status_id'];
}
