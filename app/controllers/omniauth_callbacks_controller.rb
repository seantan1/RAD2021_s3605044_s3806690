class OmniauthCallbacksController < ApplicationController
    skip_before_filter :verify_authenticity_token 
    
    def twitter
        render plains: "Success! "
    end
    
end