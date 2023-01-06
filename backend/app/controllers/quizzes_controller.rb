class QuizzesController < ApplicationController

    def index
        render json: Quiz.all, status: :ok
    end

    def show
        quiz = Quiz.find(params[:id])
        render json: quiz, status: :ok
    end

    def destroy 
        quiz = Quiz.find(params[:id])
        if (quiz.author_id == session[:user_id])
            quiz.destroy
            head :no_content
        else
            render json: {error: "Only the author of a quiz is permitted to delete it."}, status: :unauthorized
        end
    end

    def update 
        quiz = Quiz.find(params[:id])
        if (quiz.author_id == session[:user_id])
            quiz.update(params.permit(:title, :description, :image_url))
            head :no_content
        else
            render json: {error: "User ID does not match Author ID"}, status: :unauthorized
        end
    end

    def create
        quiz = Quiz.create!(quiz_params)
        render json: quiz, status: :created
    end


    private 

    def quiz_params 
        params.permit(
            :category,
            :title,
            :description,
            :image_url,
            :author_id)
    end
end
