<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


// Routes for authorisation with scope
Route::middleware(['auth:api', 'scope:Hello'])->get('/hello', function(){
    return ['hello'];
});

Route::middleware(['auth:api', 'scope:Goodbye'])->get('/goodbye', function(){
    return ['goodbye'];
});

Route::middleware(['auth:api', 'scopes:Hello,Goodbye'])->get('/helloandgoodbye', function(){
    return ['helloandgoodbye'];
});