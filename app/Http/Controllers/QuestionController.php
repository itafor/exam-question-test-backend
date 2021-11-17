<?php

namespace App\Http\Controllers;

use App\Http\Requests\QuestionRequest;
use App\Http\Resources\QuestionCollection;
use App\Http\Resources\QuestionResource;
use App\Models\Question;
use App\Services\QuestionServices;
use Illuminate\Http\Request;
use MarcinOrlowski\ResponseBuilder\ResponseBuilder;

class QuestionController extends Controller
{
    public $question;

    public function __construct(QuestionServices $question_Service)
    {
        $this->question = $question_Service;
    }

    public function storeNewQuestion(QuestionRequest $request)
    {
        $data = $request->all();

        $question_stored = $this->question->createNewQuestion($data);

        if ($question_stored) {
            return ResponseBuilder::asSuccess()
            ->withMessage('New question created successfully')
            ->withData(['question' => new QuestionResource($question_stored)])
            ->build();
        }
    }

    public function getAllQuestions()
    {
        $questions = $this->question->allQuestions();

        if ($questions) {
            return $this->sendResponse(
                new QuestionCollection($questions),
                "Questions successfully fetched"
            );
        }
    }

    public function viewQuestion(Question $question)
    {
        if ($question) {
            return $this->sendResponse(
                new QuestionResource($question),
                "Question successfully fetched"
            );
        }
    }


      public function displayQuestionsByCategory($category_id)
    {
        $questions = $this->question->filterQuestionsByCategory($category_id);

        
            return $this->sendResponse(
                new QuestionCollection($questions),
                "Questions successfully fetched"
            );
        
    }

    public function updateQuestion(QuestionRequest $request)
    {
        $data = $request->all();

        $question_updated = $this->question->manageQuestion($data);

        if ($question_updated) {
            return $this->sendResponse(
                new QuestionResource($question_updated),
                "Question successfully updated"
            );
        }
    }

    public function deleteQuestion(Question $question)
    {
        if ($question) {
            $question->delete();

            return response()->json(["Question deleted successfully"]);
        }
    }
}
