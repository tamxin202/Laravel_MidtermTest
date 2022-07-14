<?php

use App\Http\Controllers\API\PageAPIController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('/get-product',[PageAPIController::class, 'getProducts']);
Route::get('/get-product/{id}',[PageAPIController::class,'getOneProduct']);
Route::get('vegetable',[PageAPIController::class, 'search']);
Route::get('/get-food-by-keyword',[PageAPIController::class,'searchfoods']);

