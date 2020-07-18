<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    protected $fillable = array('album_id','description','image');
}
