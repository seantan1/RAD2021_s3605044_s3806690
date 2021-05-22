class HomeController < ApplicationController
  skip_before_filter :require_login
  helper_method :filter_products_in_cart, :products_sort_by_popularity
  
  # GET /
  def index
    @all_products = Product.all.order('random()')
    session[:savedlist] ||= []
  end

  def seeAllProducts
    @all_products = Product.all
  end
  
  # helper function - filter away the products a user already added in their saved list from the home page
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
  
  # helper funciton - sort products in home page by popularity
  def products_sort_by_popularity
    return Product.order(popularity: :desc)
  end
end
