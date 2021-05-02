class NewsletterEmail < ApplicationRecord
  
  # validates :email, format: {with: /.*@.*/ }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 

  
end
