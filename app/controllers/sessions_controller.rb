class SessionsController < ApplicationController
  skip_before_filter :require_login
  
  def index
    if logged_in
      redirect_to profile_path
    end
  end
  
  # special login for users to login and have a product directly added into their cart
  # def cart_login
    
  # end
  
  def create
    user = User.authenticate(params[:log_in_email], params[:log_in_password])
    if user
      session[:user_id] = user.id
      
      # if user has a product in the temporary cart waiting to be added to cart after login, add it 
      if add_to_cart_if_temp_cart
        redirect_to cart_products_path, :notice => "Log In successful and product added to cart."
      else
        redirect_to root_path, :notice => "Log In successful"
      end
    else
      redirect_to login_path, :notice => "Email or password is incorrect" 
    end
  end
  
  def twitter
    puts "TWITTER LOGINNNNNNN"
    puts auth_hash
    session[:user_id] = "123"
    redirect_to root_path, :notice => "Login with Twitter successful"
  end
  
  
  def destroy
    session[:user_id] = nil
    redirect_to login_path, :notice => "Successfully logged out"
  end
  
private
  def add_to_cart_if_temp_cart
    if session[:temp_cart]
      
      product_params = session[:temp_cart]
      product_params["user_id"] = logged_in
      @cart_product = CartProduct.new(product_params)
      @cart_product.save
      session[:temp_cart] = nil
      
      # Then remove from savedlist
      session[:savedlist] ||= []
      session[:savedlist].delete(product_params["product_id"])
      
      # Then update popularity of product
      increase_product_popularity_by_product_id(product_params["product_id"])
      return true
    end
    return false
  end
  
  def auth_hash
    request.env['omniauth.auth']
  end
end
