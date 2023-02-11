class UsersController < ApplicationController
    skip_before_action :authorize, only: [:show_current, :create]

    def index  
        render json: User.all, status: :ok
    end

    def show
        user = User.find(params[:id])
        render json: user, status: :ok
    end

    ## Show current will return the current active user. 
    def show_current
        user = User.find_by(id: session[:user_id])
        if user
            render json: user, status: :ok
        else
            render json: {error: "no user is currently logged in"}
        end
    end

    def create
        user = User.create!(user_params)
        ## auto login ##
        session[:user_id] = user.id
        render json: user, status: :created
    end

    #this method is intended to return an index of users ranked by score. 
    def ranked_index
        result = User.all.sort_by {|u| u.score}
        render json: result, status: :ok
    end

    private

    def user_params 
        params.permit(
            :first_name, 
            :last_name, 
            :username,
            :image_url,
            :password)
    end
    
end
