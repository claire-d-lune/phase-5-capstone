class ApplicationController < ActionController::API
    include ActionController::Cookies
    # before_action :authorize


    private 
    ## We will use this as a preaction for most children
    ## this validates that a user is logged in 
    def authorize 
        return render json: { error: "Not Authorized" }, status: :unauthorized unless session.include? :user_id 
    end
end
