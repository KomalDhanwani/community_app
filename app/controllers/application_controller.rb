class ApplicationController < ActionController::Base
  before_filter :authenticate
  
  protect_from_forgery
  
    def authenticate
      authenticate_or_request_with_http_basic do |username, password|
        username == "rm" && password == "shocker"
      end
    end
  
end
