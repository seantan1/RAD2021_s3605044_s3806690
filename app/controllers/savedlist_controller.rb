class SavedlistController < ApplicationController
  skip_before_filter :require_login
  helper_method :saved_list_empty, :saved_list_length, :product_colors, :product_sizes
  
  def index
    session[:savedlist] ||= []
    @savedlist = session[:savedlist]
  end
  
  def savedlist
    session[:savedlist] ||= []
    @savedlist = session[:savedlist]
  end
  
  def edit
    session[:savedlist] ||= []
    if session[:savedlist].include? params[:id]
      session[:savedlist].delete(params[:id])
    else
      session[:savedlist] << params[:id]
      # Then update popularity of product
      increase_product_popularity_by_product_id(params[:id])
    end
    redirect_to request.referrer
  end
  
  def destroy
    session[:savedlist] ||= []
    session[:savedlist].delete(params[:id])
    redirect_to request.referrer
  end
  
  def saved_list_empty
    return session[:savedlist].empty?
  end
  
  def saved_list_length
    return session[:savedlist].length
  end
  
  def product_colors(product)
    return product.color.split(',').map(&:to_s)
  end
  
  def product_sizes(product)
    return product.size.split(',').map(&:to_s)
  end
end
