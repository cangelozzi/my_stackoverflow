<?php

namespace App\Http\Controllers;

use App\Like;
use App\Reply;
use Illuminate\Http\Request;

class LikeController extends Controller
{
    public function like(Reply $reply)
    {
        // only the authenticated user can like a reply
        $reply->like()->create(['user_id' => auth()->id()]);
    }

    public function unlike(Reply $reply)
    {
        // user can like just ONCE that is why we delete "first"
        $reply->like()->where(['user_id' => auth()->id()])->first()->delete();
    }
}
