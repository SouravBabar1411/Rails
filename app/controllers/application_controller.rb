class ApplicationController < ActionController::Base
  ##  To set up a controller with user authentication
  # before_action :authenticate_user!
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
  ## check whether current user is super admin
  def super_admin?
    current_user.role = User.where(:role => 'super_admin')
  end

  ## check whether current user is user
  def user?
    current_user.role = User.where(:role => 'user')
  end

  ## To permit additional parameters
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:image,:first_name,:last_name,:phone,:gender])
    devise_parameter_sanitizer.permit(:account_update, keys: [:image,:first_name,:last_name,:phone,:gender])
  end
end
