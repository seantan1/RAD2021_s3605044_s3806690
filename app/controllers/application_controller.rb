class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :require_login
  
  helper_method :get_product_category_count, :get_product_by_id, :edit_cart, :logged_in, :get_cart_product_by_product_id, :product_images, :product_first_image, :get_new_ins_product_category_count
  
  
  def index
    @newsletter_email = NewsletterEmail.new
    session[:savedlist] ||= []
  end
  
  def get_product_category_count(input_category)
    count = 0
    Product.all.each do |product|
      if product.category == input_category
        count += 1
      end
    end
    return count
  end
  
  def get_new_ins_product_category_count
    count = 0
    Product.all.each do |product|
      if calculate_days_ago(product) < 30
        count += 1
      end
    end
    return count
  end
  
  def get_product_by_id(input_id)
    Product.all.each do |product|
      if product.id.to_s == input_id.to_s
        return product
      end
    end
    return nil
  end
  
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
  
private

  def require_login
    unless logged_in
      redirect_to login_path
    end
  end
  
  def calculate_days_ago(product)
    return (DateTime.now - product.arrival.to_datetime).to_i
  end
end
