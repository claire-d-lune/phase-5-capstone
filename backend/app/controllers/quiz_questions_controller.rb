class QuizQuestionsController < ApplicationController

    def create
        quiz_question = QuizQuestion.create!(quiz_question_params)
        render json: quiz_question, status: :created
    end

    private 

    def quiz_question_params
        params.permit(:question_id, :quiz_id, :weight)
    end
end
