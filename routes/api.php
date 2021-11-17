<?php

use App\Http\Controllers\QuestionController;
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


Route::group(
    [
    'prefix' => 'question'
    ],
    function () {
        Route::post(
            '/store',
            [QuestionController::class, 'storeNewQuestion']
        )->name('question.store');

        Route::get(
            '/lists',
            [QuestionController::class, 'getAllQuestions']
        )->name('question.get.all');

        Route::get(
            '/view/{question}',
            [QuestionController::class, 'viewQuestion']
        )->name('question.view');
       
    }
);
