class QuestionsController < ApplicationController

    def index 
        render json: Question.all, status: :ok
    end

    def create
        question = Question.create!(question_params)
        render json: question, status: :created
    end

    def random_selection
        response = Question.all.where(category: question_params['category'], difficulty: question_params['difficulty']).order('random()').limit(question_params['count'])
        render json: response, status: :ok
    end

    private 

    def question_params 
        params.permit(
            :count,
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
