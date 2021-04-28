class UsersController < ApplicationController
  def index 
  @user = User.new #creates a user object for our form
  @users = User.all
  end
  
  def list
    @users = User.all
  end
  
  def create
    respond_to do |format|
      @user = User.create(signup_params) 
      session[:user_id] = @user.id
      if @user.save 
       format.html{ redirect_to users_path, notice: "Account created!" }
       format.json { head :no_content }
      else 
        format.html{ redirect_to users_path, notice: "Password not the same!" }
        format.json { head :no_content }
      end
    end
  end
  
  def destroy
    User.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to users_path, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  
 private
  #allowed list of params for user model 
  def signup_params
  params.require(:user).permit(:email, 
  :password, :password_confirmation)
  end
end
