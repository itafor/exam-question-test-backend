<?php

namespace App\Services;

use App\Models\Option;
use App\Models\Question;

/**
 * 
 */
class QuestionServices 
{
	
	public function createNewQuestion($data)
	{
		$question = new Question();
		$question->category_id = $data['category_id'];
		$question->question = $data['question'];
		$question->save();

		$this->addOptions($data, $question);

		return $question;
	}


	 public  function addOptions($data, $question)
     {
         if (isset($data['options'])) {
             foreach ($data['options'] as $option) {
                 Option::create([
                     'question_id' => $question->id,
                     'option' => $option['option'],
                     'option_type' => $option['option_type'],
                     'is_correct' => $option['is_correct'],
                 ]);
             }
         }
     }

   

    public function allQuestions()
    {
        return Question::orderBy('created_at', 'desc')->with(['options'])->get();
    }

      public function manageQuestion($data)
    {
        $question = Question::findOrFail($data['question_id']);

        if($question){
        $question->category_id = $data['category_id'];
        $question->question = $data['question'];
        $question->save();

        $this->updateOptions($data, $question);

        return $question;
        }
        
    }

    
     public  function updateOptions($data, $question)
     {
         if (isset($data['options'])) {
             foreach ($data['options'] as $key => $option) {
                 $updateable_option =  Option::where('id', $option['option_id'])->first();
                 if($updateable_option){
                     $updateable_option->option = $option['option'];
                     $updateable_option->option_type = $option['option_type'];
                     $updateable_option->is_correct = $option['is_correct'];
                     $updateable_option->save();
                 }
                 
             }
         }
     }

    
}

