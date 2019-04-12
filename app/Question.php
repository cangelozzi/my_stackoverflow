<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;

// use App\Reply;

class Question extends Model
{
    // Question belongs to ONE User
    public function user()
    {
        return  $this->belongsTo(User::class);
    }

    // Question can have MANY replies
    public function replies()
    {
        return $this->hasMany(Reply::class);
    }

    // Question belongs to ONE category
    public function category()
    {
        return  $this->belongsTo(Category::class);
    }
}
