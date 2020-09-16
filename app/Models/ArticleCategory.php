<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class ArticleCategory extends Model
{
    use Sluggable;

    protected $fillable = [
        'category_name',
        'category_slug',
        'site_id',
        'created_by',
        'updated_by',
    ];

    public function sluggable()
    {
        return [
            'category_slug' => [
                'source' => 'category_name',
            ],
        ];
    }

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
