class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

	def configure_permitted_parameters
	  devise_parameter_sanitizer.permit(:sign_up) do |user_params|
	  	user_params.permit(:name, :username, :email, :password, :password_confirmation)
	  end
	  
	  devise_parameter_sanitizer.permit(:account_update) do |user_params|
	  	user_params.permit(:name, :username, :email, :password, :password_confirmation, :current_password)
	  end
	end


	def after_sign_in_path_for(resource)
	  posts_path(resource)
	end

	def after_sign_out_path_for(resource_or_scope)
    root_path
  end



end