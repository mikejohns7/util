class ApplicationController < ActionController::Base

    protect_from_forgery with: :exception
    before_action :require_login
    include SessionsHelper

    private

    def require_login
        unless logged_in?
            flash[:error] = "You must be logged in to access this section"
            redirect_to login_path # halts request cycle
        end
    end
end
