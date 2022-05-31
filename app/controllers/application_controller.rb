class ApplicationController < ActionController::Base
    def unauthenticated_user 
        return redirect_to login_path unless session[:user_id]
    end

    def authenticated_user
        return redirect_to root_path if session[:user_id]
    end
end
