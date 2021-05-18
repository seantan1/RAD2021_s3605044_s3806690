class PasswordResetsController < ApplicationController
  skip_before_filter :require_login
  
  def new
  end
  
  def show
  end
  
  def create
    user = User.find_by_email(params[:email])
    user.send_password_reset if user
    redirect_to login_path, :notice => "Email sent with password reset instructions."
  end
  
  def edit
    @user = User.find_by_password_reset_token!(params[:id])
  end
  
  def update
    @user = User.find_by_password_reset_token!(params[:id])
    if @user.password_reset_sent_at < 2.hours.ago
      redirect_to new_password_reset_path, :alert => "Password reset has expired."
    else
      @user.update_attributes(reset_params)
      redirect_to login_path, :notice => "Password has been reset!"
    end
  end

private
  def reset_params
  params.require(:user).permit(:password, :password_confirmation)
  end
end
