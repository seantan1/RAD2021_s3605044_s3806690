class HomeController < ApplicationController
  helper_method :filter_products_in_cart
  
  def index
    @all_products = Product.all
    session[:savedlist] ||= []
  end

  def seeAllProducts
    @all_products = Product.all
  end
  
  def filter_products_in_cart(products)
    filtered_products = []
    
    products.each do |product|
      product_in_cart = false
      session[:savedlist].each do |i|
        if product.id.to_s == i
          product_in_cart = true
        end
      end
      
      if !product_in_cart
        filtered_products.push(product)
      end
    end
    return filtered_products
  end
end
