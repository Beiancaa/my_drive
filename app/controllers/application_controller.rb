class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
     def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :first_name, :last_name, :username, :phone, :birthday, :gender) }
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit({ roles: [] }, :email, :password) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :current_password, :first_name, :last_name, :username,:phone, :birthday, :gender) }
     end
end
