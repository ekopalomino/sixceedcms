<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;

class Faq extends Model
{
    protected $fillable = [
        'faq_category_id',
        'site_id',
        'pertanyaan',
        'jawaban',
        'created_by',
        'updated_by',
    ];

    public function Creator()
    {
        return $this->belongsTo(User::class,'created_by');
    }

    public function Editor()
    {
        return $this->belongsTo(User::class,'updated_by');
    }

    public function Categories()
    {
        return $this->belongsTo(FaqCategory::class,'faq_category_id');
    }
}
