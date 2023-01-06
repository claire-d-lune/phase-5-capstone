class AttemptsController < ApplicationController

    def index
        render json: Attempt.all, status: :ok
    end

    def show
        attempt = Attempt.find(params[:id])
        render json: attempt, status: :ok
    end

    def create 
        attempt = Attempt.create!(attempt_params)
        render json: attempt, status: :created
    end

    private 

    def attempt_params 
        params.permit(
            :quiz_id,
            :user_id,
            :score
        )
    end
end
