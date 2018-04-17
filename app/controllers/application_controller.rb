class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
 before_action :authenticate_admin!, only: [:action]

   protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation, :remember_me, :avatar, :avatar_cache, :admin) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :password, :password_confirmation, :current_password, :avatar, :admin) }
    #devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :last_name, address_attributes: [:country, :state, :city, :area]])
  end

  def authenticate_admin!
  authenticate_user!
  redirect_to :somewhere, status: :forbidden unless current_user.admin?
end

end
