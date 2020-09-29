<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;

class ArticleCategory extends Model
{
    protected $fillable = [
        'category_name',
        'site_id',
        'created_by',
        'updated_by',
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
