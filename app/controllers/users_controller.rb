class UsersController < ApplicationController
  skip_before_filter :require_login
  
  helper_method :get_user, :subscribed_newsletter
  
  # REGEX PATTERN FROM TUT 7 - verify validity of email
  EMAIL_PATTERN = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  # /\A\S+@.+\.\S+\z/
   
  
  # validates :email, presence: true, format: { with: EMAIL_PATTERN}
  # validates :password, presence: true, format: { with: PASSWORD_PATTERN}, allow_blank: true
  # validates :name, presence: true
  
  # Alphanumeric only, only between 8-20 characters
  PASSWORD_PATTERN =  /^[a-zA-Z0-9]{8,20}$/

  def index 
    @user = User.new #creates a user object for our form
    @users = User.all
  end
  
  # GET /register - registration page
  def register
    @user = User.new
  end
  
  # GET /profile - user profile page
  def show
    @user = get_user
  end
  
  # GET /user/edit - edit user details page
  def edit
    @user = User.find(params[:id])
  end

  # POST create user method
  def create
    respond_to do |format|
      # Check if user ticked T&C
      if (signup_params[:tos].to_i == 0)
        format.html{ redirect_to request.referrer, notice: "You must accept the Terms & Conditions to register." }
        format.json { head :no_content }
      else
        # Check if username taken
        if username_exist(signup_params[:name])
          format.html{ redirect_to request.referrer, notice: "Username already taken." }
          format.json { head :no_content }
        # check if email taken
        elsif email_exist(signup_params[:email])
          format.html{ redirect_to request.referrer, notice: "Email already taken." }
          format.json { head :no_content }
        # check if password valid
        elsif !password_valid(signup_params[:password])
          format.html{ redirect_to request.referrer, notice: "Password must be between 8-20 characters!." }
          format.json { head :no_content }
        else
          # check if email valid
          if email_valid(signup_params[:email])
            @user = User.create(signup_params) 
            session[:user_id] = @user.id
            
            # User successfully creates account if save is called
            if @user.save
             UserMailer.newsletter_confirmation(@user).deliver_now
             format.html{ redirect_to root_path, notice: "Account created!" }
             format.json { head :no_content }
            # if save failed means the password and confirm password params are not the same
            else
              format.html{ redirect_to request.referrer, notice: "Password not the same!" }
              format.json { head :no_content }
            end
          else 
            format.html{ redirect_to request.referrer, notice: "Please enter a valid email!" }
            format.json { head :no_content }
          end
        end
      end
    end
  end
  
  # POST method to update user details
  def update
    respond_to do |format|
      @user = User.find(params[:id])
      @user = @user.update(signup_params)
      if @user
        format.html{ redirect_to profile_path, notice: "User details successfully updated!" }
        format.json { head :no_content }
      else
        format.html{ redirect_to request.referrer, notice: "Password is not the same!" }
        format.json { head :no_content }
      end
    end
  end
  
  # DELETE method for deleting user
  def destroy
    User.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to request.referrer, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  
  # subscribe/unsuscribe to newsletter like a toggle
  def newsletter_subscription_switch
    respond_to do |format|
      if subscribed_newsletter(get_user)
        NewsletterEmail.all.each do |newsletter|
          if newsletter.email == get_user.email
            newsletter.destroy
            format.html { redirect_to request.referrer, notice: "Successfully Unsubscribed from Newsletter" }
            format.json { head :no_content }
          end
        end
      else
        params = {"email"=>get_user.email}
        @newsletter_email = NewsletterEmail.new(params)
        if @newsletter_email.save
          format.html { redirect_to request.referrer, notice: "Successfully Subscribed to Newsletter" }
          format.json { render :show, status: :created, location: @newsletter_email }
        end
      end
    end
      
    
      
  end
  # helper - getter
  def get_user
    return User.find(session[:user_id])
  end
  
  # helper - boolean if user subscribed to newsletter
  def subscribed_newsletter(user)
    NewsletterEmail.all.each do |newsletter|
      if newsletter.email == user.email
        return true
      end
    end
    return false
  end
    
  
 private
  #allowed list of params for user model 
  def signup_params
  params.require(:user).permit(:name,:email, 
  :password, :password_confirmation, :tos)
  end
  
  def logged_in
    return session[:user_id] unless nil
    return false
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
      if user.email.to_s == user_email.to_s
        return true
      end
    end
    return false
  end
  
  def email_valid(user_email)
    return user_email.match? EMAIL_PATTERN
  end
  
  def password_valid(user_password)
    return user_password.match? PASSWORD_PATTERN
  end
   
  
  def show
    @user = User.find(params[:id])
  end
end
