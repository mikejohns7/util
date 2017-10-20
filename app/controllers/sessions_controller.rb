class SessionsController < ApplicationController

    # Override ApplicationController's filter blocking all access unless logged in
    skip_before_action :require_login, only: [:new, :create]

    def new
        # For returning login form only
    end

    def create
        @user = User.find_by(email: params[:session][:email].downcase)
        if @user && @user.authenticate(params[:session][:password])
            log_in @user
            redirect_to home_path
        else
            flash.now[:warning] = "Login failed"
            render 'new'
        end
    end

    def destroy
        log_out if logged_in?
        redirect_to login_path
    end
end
