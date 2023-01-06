class QuestionsController < ApplicationController

    def index 
        render json: Question.all, status: :ok
    end

    def create
        question = Question.create!(question_params)
        render json: question, status: :created
    end

    private 

    def question_params 
        params.permit(
            :category,
            :format,
            :difficulty,
            :question,
            :correct_answer,
            :incorrect_answer_1,
            :incorrect_answer_2,
            :incorrect_answer_3) 
    end
end
