class HomeController < ApplicationController
  def index
    @all_products = Product.all
  end
  
  def seeAllProducts
    @all_products = Product.all
  end
end
