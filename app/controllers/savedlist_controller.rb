class SavedlistController < ApplicationController
  helper_method :saved_list_empty, :saved_list_length
  
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
end
