class SessionsController < ApplicationController
#Skips having to login before going to the root url
skip_before_filter :require_login

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_to home_path
    else
      flash.now[:danger] = 'Incorrect email/password. Please try again.'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
