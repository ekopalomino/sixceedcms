<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;

class Publication extends Model
{
    protected $fillable = [
        'cover_image',
        'title',
        'category_id',
        'link',
        'site_id',
        'file',
        'created_by',
        'updated_by',
        'publish_year',
    ];

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
