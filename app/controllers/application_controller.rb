class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    all_restaurants_path 
  end
end
