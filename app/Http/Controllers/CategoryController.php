<?php

namespace App\Http\Controllers;

// use App\Category;
use App\Category;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class CategoryController extends Controller
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
        return Category::latest()->get();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        // create url slug from category name
        $request['url_category'] = str_slug($request->name);

        $newcat = Category::create($request->all());
        return response($newcat, Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show(Category $category)
    {
        return $category;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Category $category)
    {
        // update the name, and automatically create the url version
        $category->update(
            [
                'name' => $request->name,
                'url_category' => str_slug($request->name) // create the "slug" version of name automatically
            ]
        );
        return response($category, Response::HTTP_ACCEPTED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(Category $category)
    {
        $category->delete();
        return response('Category Deleted', Response::HTTP_NO_CONTENT);
    }
}
