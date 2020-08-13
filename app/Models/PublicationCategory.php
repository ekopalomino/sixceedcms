<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;

class PublicationCategory extends Model
{
    protected $fillable = [
        'site_id',
        'category_name',
    ];

    public function Sites()
    {
        return $this->belongsTo(Site::class,'site_id');
    }
}
