class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def index
    @newsletter_email = NewsletterEmail.new
    session[:cart] ||= []
  end
end
