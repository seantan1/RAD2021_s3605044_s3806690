class SavedlistController < ApplicationController
  skip_before_filter :require_login
  helper_method :saved_list_empty, :saved_list_length, :product_colors, :product_sizes
  
  # GET /savedlist
  def index
    session[:savedlist] ||= []
    @savedlist = session[:savedlist]
  end
  
  def savedlist
    session[:savedlist] ||= []
    @savedlist = session[:savedlist]
  end
  
  # POST - add/remove product from user's savedlist like a toggle
  def edit
    respond_to do |format|
      session[:savedlist] ||= []
      if session[:savedlist].include? params[:id]
        session[:savedlist].delete(params[:id])
        
        # update admin stats
        saved_products_stats(params[:id], -1)
        
        format.html { redirect_to request.referrer, notice: "Item removed from Saved list." }
      else
        session[:savedlist] << params[:id]
        
        # update admin stats
        saved_products_stats(params[:id], 1)
        
        # Then update popularity of product
        increase_product_popularity_by_product_id(params[:id])
        format.html { redirect_to request.referrer, notice: "Item added from Saved list!" }
      end
    end
  end
  
  # DELETE method - delete a product from user's savedlist
  def destroy
    session[:savedlist] ||= []
    session[:savedlist].delete(params[:id])
    redirect_to request.referrer
  end
  
  # helper - boolean if empty
  def saved_list_empty
    return session[:savedlist].empty?
  end
  
  # helper - getter for saved list length
  def saved_list_length
    return session[:savedlist].length
  end
  
  # helper - get all colors of product
  def product_colors(product)
    return product.color.split(',').map(&:to_s)
  end
  
  # helper - get all sized of product
  def product_sizes(product)
    return product.size.split(',').map(&:to_s)
  end
end
