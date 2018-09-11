# frozen_string_literal: true

class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	def after_sigh_in_path_for(resource)
		current_user_path		
	end

	def after_sign_out_path_for(resource_or_scope)
		request.referrer		
	end


	protected


    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password)}
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :favorite_photos)}
    end

end