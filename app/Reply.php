<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;

class Reply extends Model
{
    // Reply belongs to ONE Question
    public function question()
    {
        return  $this->belongsTo(Question::class);
    }

    // Reply belongs to ONE User
    public function user()
    {
        return  $this->belongsTo(User::class);
    }

    // Reply has MANY Likes
    public function like()
    {
        return  $this->hasMany(Like::class);
    }
}
