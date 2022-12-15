class UsersController < ApplicationController

    def index  
        render json: User.all, status: :ok
    end

    def show
        user = User.find(params[:id])
        render json: user, status: :ok
    end

    def create
        user = User.create!(user_params)
        ## auto login ##
        session[:user_id] = user.id
        render json: user, status: :created
    end

    private

    def user_params 
        params.permit(
            :first_name, 
            :last_name, 
            :username,
            :image_url,
            :password,
            :confirm_password)
    end
    
end
