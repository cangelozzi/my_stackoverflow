<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class QuestionResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        // return (display in response) just the fields we want
        return [
          'id' => $this->id,
          'title' => $this->title,
          'path' => $this->path,  // path is deined in function getPathAttribute() in Model
          'body' => $this->body,
          'created_at' => $this->created_at->diffForHumans(),
          'user' => $this->user->name // coming form Question User relationship
        ];
    }
}