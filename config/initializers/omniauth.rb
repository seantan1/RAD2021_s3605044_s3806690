#config/initializers/omniauth.rb
 
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'ekEycfuSdCLS0woju2Uns6mxl', 'lCvYX6tPdeAJjJN4FIBZSA5g3efyAqXiSSqBXrHtdxg9BIiDmm'
end