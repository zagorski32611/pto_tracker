class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :authenticate_employee!
  
    before_action :configure_permitted_parameters, if: :devise_controller?
  
    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :first_name, :last_name, :total_pto) }
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :current_password, :first_name, :last_name, :total_pto) }
  end
end

=begin
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:id, :first_name, :last_name, :manager, :total_pto, :used_pto, :remaining_pto, :email])
    end
=end