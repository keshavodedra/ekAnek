class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :authenticate_user!

  def after_sign_in_path_for(resource_or_scope)
	  user_path
	end

	def after_sign_out_path_for(resource_or_scope)
	  root_path
	end

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email ])
  end

end
