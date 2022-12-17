class QuizzesController < ApplicationController

    def index
        render json: Quiz.all, status: :ok
    end

    def show
        quiz = Quiz.find(params[:id])
        render json: quiz, status: :ok
    end


end
