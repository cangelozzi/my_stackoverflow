<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    // Mass assignment handle
    protected $guarded = [];

    // use url_name in place of id for Route Model Binding
    public function getRouteKeyName()
    {
        return 'url_category';
    }
}
