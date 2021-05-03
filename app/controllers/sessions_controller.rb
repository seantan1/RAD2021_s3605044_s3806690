class SessionsController < ApplicationController
  def create
    user = User.authenticate(params[:log_in_email], params[:log_in_password])
    if user
      session[:user_id] = user.id
      redirect_to login_path, :notice => "Log In successful"
    else
      redirect_to login_path, :notice => "Email or password is incorrect" 
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to login_path, :notice => "Successfully logged out"
  end
end
