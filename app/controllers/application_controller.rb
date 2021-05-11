class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :get_product_category_count, :get_product_by_id, :edit_cart, :logged_in, :get_cart_product_by_product_id
  
  
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
    return session[:user_id]
  end
  
  
  
end
