# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'apikey', # This is the string literal 'apikey', NOT the ID of your API key
  :password => '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', # This is the secret sendgrid API key which was issued during API key creation
  :domain => 'https://rad2021-s3605044-s3806690.herokuapp.com/',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}

