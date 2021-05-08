class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :get_product_category_count, :get_product_by_id, :edit_cart
  
  
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
      if product.id.to_s == input_id
        return product
      end
    end
    return nil
  end
  
end
