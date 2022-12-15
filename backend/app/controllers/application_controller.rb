class ApplicationController < ActionController::API
    include ActionController::Cookies
    # rescue_from ActiveRecord::RecordInvalid, with: :display_error
    # rescue_from ActiveRecord::RecordNotFound, with: :display_error
    # before_action :authorized_user

    # def current_user 
    #     user = User.find(session[:user_id])
    #     render json: user, status: :ok
    # end

    # def authorized_user  
    #     return render json: { error: "Not authorized" }, status: :unauthorized unless current_user
    # end

    private 

    # def display_error error
    #     byebug
    # end

end
