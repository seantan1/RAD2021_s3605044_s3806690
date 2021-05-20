#config/initializers/omniauth.rb
 
Rails.application.config.middleware.use OmniAuth::Builder do
  OmniAuth.config.allowed_request_methods = [:post, :get]

  provider :twitter, ENV['PdNaDjVIx4U9fcqUXYYoqqCfN'], ENV['HM7HQ0fwyKsENqQru3FlQPoniykFqrOHZFLFaRHmyGrgg3fd8w']
  
end