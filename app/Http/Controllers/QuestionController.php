<?php

namespace App\Http\Controllers;

use App\Model\Question;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use App\Http\Resources\QuestionResource;
use App\Http\Requests\QuestionRequest;

class QuestionController extends Controller
{
    //! JWT AUTH Middleware to allow update, destroy just authenticate, while index and show also without login
    //! nobody can create a question or destroy it without a token
    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('JWT', ['except' => ['index', 'show']]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // filter result through Resource for ALL the responses
        return QuestionResource::collection(Question::latest()->get());
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // fields to store, all from markdown editor.

        // create url slug from title
        $request['url_question'] = str_slug($request->title);

        // user_id filled according to which user is logged
        $question = auth()->user()->question()->create($request->all());

        // return via QuesitonResource to be able to get the path
        return response(new QuestionResource($question), Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function show(Question $question)
    {
        //! $question - route model binding, returning via QuestinResource to better display
        return new QuestionResource($question);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Question $question)
    {
        $question->update($request->all());
        return response('Question Updated', Response::HTTP_ACCEPTED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function destroy(Question $question)
    {
        $question->delete();
        return response('Question Deleted', Response::HTTP_NO_CONTENT);
    }
}
