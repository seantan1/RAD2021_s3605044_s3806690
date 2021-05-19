#config/initializers/omniauth.rb
 
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'PdNaDjVIx4U9fcqUXYYoqqCfN', 'HM7HQ0fwyKsENqQru3FlQPoniykFqrOHZFLFaRHmyGrgg3fd8w'
end