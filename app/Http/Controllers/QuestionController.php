<?php

namespace App\Http\Controllers;

use App\Http\Resources\QuestionResource;
use App\Models\Question;
use App\Services\QuestionServices;
use Illuminate\Http\Request;

class QuestionController extends Controller
{

	public $question;

    public function __construct(QuestionServices $question_Service)
    {
       
        $this->question = $question_Service;
    }

    public function storeNewQuestion(Request $request)
    {
    	$data = $request->all();

    	$question_stored = $this->question->createNewQuestion($data);

    	if($question_stored)
    	{
    		return response()->json(['message' => 'New question created successfully']);
    	}
    }

    public function getAllQuestions()
    {
    	$questions = $this->question->allQuestions();

    	if($questions){
    		 return $this->sendResponse(
           $questions,
            "Questions successfully fetched"
        );
    }
    
    }

     public function viewQuestion(Question $question)
    {
       	if($question){
    		 return $this->sendResponse(
          new QuestionResource($question),
            "Question successfully fetched"
        );
    }
    }

 
}
