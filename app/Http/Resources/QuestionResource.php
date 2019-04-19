<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Reply;

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
          'replies' => ReplyResource::collection($this->replies),
          'reply_count' => $this->replies->count(),
          'created_at' => $this->created_at->diffForHumans(),
          'user_id' => $this->user_id,
          'user' => $this->user->name // coming form Question User relationship
        ];
    }
}
