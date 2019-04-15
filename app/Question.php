<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\User;

// use App\Reply;

class Question extends Model
{

  // Mass Assignment fix, which fields to pass thorugh request
    //protected $fillable = ['title', 'url_question', 'body', 'category_id', 'user_id'];
    protected $guarded = [];

    // use url_name in place of id for Route Model Binding
    public function getRouteKeyName()
    {
        return 'url_question';
    }

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

    // define and get the route Path
    public function getPathAttribute()
    {
        return "api/question/$this->url_question";
    }
}
