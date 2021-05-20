class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :require_login
  
  helper_method :get_product_category_count, :get_product_by_id, :edit_cart, :logged_in, :get_cart_product_by_product_id, :product_images, 
  :product_first_image, :get_new_ins_product_category_count, :increase_product_popularity_by_product_id, :addToCustomerRatings, :isRatingShown, 
  :isAdmin, :saved_products_stats, :purchased_products_stats, :getCustomerRatingStat
  
  # def current_user
  #   @current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if cookies[:auth_token]
  # end
  
  def index
    @newsletter_email = NewsletterEmail.new
    session[:savedlist] ||= []
  end
  
  # Increase counter if the product is in the category
  def get_product_category_count(input_category)
    count = 0
    Product.all.each do |product|
      if product.category == input_category
        count += 1
      end
    end
    return count
  end
  
  # increase the counter if the product was added less than 30 days ago
  def get_new_ins_product_category_count
    count = 0
    Product.all.each do |product|
      if calculate_days_ago(product) < 30
        count += 1
      end
    end
    return count
  end
  
  # retrieve product by id
  def get_product_by_id(input_id)
    Product.all.each do |product|
      if product.id.to_s == input_id.to_s
        return product
      end
    end
    return nil
  end
  
  # 
  def get_cart_product_by_product_id(input_product_id)
    CartProduct.all.each do |cart_product|
      if cart_product.product_id.to_s == input_product_id.to_s && cart_product.user_id == logged_in
        return cart_product
      end
    end
    return CartProduct.new
  end
  
  
  def logged_in
    return session[:user_id] unless nil
    return false
  end
  
  def product_images(product)
    return product.image.split(',').map(&:to_s)
  end
  
  def product_first_image(product)
    return product.image.split(',').map(&:to_s).first
  end
  
  def increase_product_popularity_by_product_id(input_product_id)
    product = Product.find(input_product_id)
    product.popularity += 1
    product.save
  end
  
  def addToCustomerRatings(input_user_id, input_rating)
    customer_rating = CustomerRating.new
    customer_rating.user_id = input_user_id
    customer_rating.rating = input_rating
    customer_rating.save
  end
  
  def getCustomerRatingStat(input_rating)
    count = 0
    CustomerRating.all.each do |customer_rating|
      if customer_rating.rating == input_rating.to_i
        count += 1
      end
    end
    return count
  end
    
  
  def isRatingShown(input_user_id)
    CustomerRating.all.each do |customer_rating|
      if customer_rating.user_id.to_s == input_user_id.to_s
        return true
      end
    end
    return false
  end
  
  def isAdmin(input_user_id)
    Admin.all.each do |admin|
      if admin.user_id.to_s == input_user_id.to_s
        return true
      end
    end
    return false
  end
  
  def saved_products_stats(input_product_id, count_change)
    if product = getSavedProduct(input_product_id)
    else
      product = SavedProduct.new
      product.product_id = input_product_id
      product.count = 0
    end
    product.count += count_change
    product.save
  end
  
  def purchased_products_stats(input_product_id, count_change)
    if product = getPurchasedProduct(input_product_id)
    else
      product = PurchasedProduct.new
      product.product_id = input_product_id
      product.count = 0
    end
    product.count += count_change
    product.save
  end
  
private

  def require_login
    unless logged_in
      redirect_to login_path
    end
  end
  
  def calculate_days_ago(product)
    return (DateTime.now - product.arrival.to_datetime).to_i
  end
  
  def getSavedProduct(input_product_id)
    SavedProduct.all.each do |product|
      if product.product_id.to_s == input_product_id.to_s
        return product
      end
    end
    return false
  end
  
  def getPurchasedProduct(input_product_id)
    PurchasedProduct.all.each do |product|
      if product.product_id.to_s == input_product_id.to_s
        return product
      end
    end
    return false
  end
  
end
