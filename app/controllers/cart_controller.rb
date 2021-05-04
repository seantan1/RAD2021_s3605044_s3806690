class CartController < ApplicationController
  def index
    session[:cart] ||= []
    @cart_products = session[:cart]
    puts '=====CART PRODUCTS======'
    puts @cart_products
  end
  
  
  def edit
    session[:cart] ||= []
    if session[:cart].include? params[:id]
      session[:cart].delete(params[:id])
    else
      session[:cart] << params[:id]
    end
    redirect_to request.referrer
  end
  
  def destroy
    session[:cart] ||= []
    session[:cart].delete(params[:id])
    redirect_to request.referrer
  end
end
