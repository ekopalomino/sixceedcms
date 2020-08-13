<?php

namespace Sixceed\Models;

use Illuminate\Database\Eloquent\Model;

class ContactUsProcess extends Model
{
    protected $fillable = [
        'message_id',
        'responses',
        'reply_by',
        'reply_at',
        'sent_by',
        'sent_at',
        'status_id',
    ];

    public function Reply()
    {
        return $this->belongsTo(User::class,'reply_by');
    }

    public function Sent()
    {
        return $this->belongsTo(User::class,'sent_by');
    }

    public function Status()
    {
        return $this->belongsTo(Status::class,'status_id');
    }
}
