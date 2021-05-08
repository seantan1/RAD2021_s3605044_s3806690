class UsersController < ApplicationController
  def index 
    @user = User.new #creates a user object for our form
    @users = User.all
  end
  
  def register
    @user = User.new
  end
  
  def create
    respond_to do |format|
      if (signup_params[:tos].to_i == 0)
        format.html{ redirect_to request.referrer, notice: "You must accept the Terms & Conditions to register." }
        format.json { head :no_content }
      else
        if username_exist(signup_params[:name])
          format.html{ redirect_to request.referrer, notice: "Username already taken." }
          format.json { head :no_content }
        elsif email_exist(signup_params[:email])
          format.html{ redirect_to request.referrer, notice: "Email already taken." }
          format.json { head :no_content }
        else
          if email_valid(signup_params[:email])
            @user = User.create(signup_params) 
            session[:user_id] = @user.id
            if @user.save
             UserMailer.newsletter_confirmation(@user).deliver_now
             format.html{ redirect_to request.referrer, notice: "Account created!" }
             format.json { head :no_content }
            else
              format.html{ redirect_to request.referrer, notice: "Password not the same!" }
              format.json { head :no_content }
            end
          else 
            format.html{ redirect_to request.referrer, notice: "Email is invalid." }
            format.json { head :no_content }
          end
        end
      end
    end
  end
  
  def destroy
    User.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to request.referrer, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  
 private
  #allowed list of params for user model 
  def signup_params
  params.require(:user).permit(:name,:email, 
  :password, :password_confirmation, :tos)
  end
  
  def username_exist(username)
    @users = User.all
    @users.each do |user|
      if user.name == username
        return true
      end
    end
    return false
  end
  
  def email_exist(user_email)
    @users = User.all
    @users.each do |user|
      if user.email == user_email
        
        return true
      end
    end
    return false
  end
  
  def email_valid(user_email)
    return user_email.include? '@'
  end
end
