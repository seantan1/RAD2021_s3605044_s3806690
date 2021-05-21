#config/initializers/omniauth.rb
 
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, Rails.application.secrets.twitter_api_key, Rails.application.secrets.twitter_api_secret
  # OmniAuth.config.allowed_request_methods = [:post, :get]

  # provider :twitter, ENV['PdNaDjVIx4U9fcqUXYYoqqCfN'], ENV['HM7HQ0fwyKsENqQru3FlQPoniykFqrOHZFLFaRHmyGrgg3fd8w']
  
end