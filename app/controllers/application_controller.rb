class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    #sign_inの時にgroup_keyも許可する
    devise_parameter_sanitizer.permit(:sign_in, keys:[:group_key])
    #sign_upの時にgroup_keyも許可する
    devise_parameter_sanitizer.permit(:sign_up, keys:[:group_key])
    #account_updateの時にgroup_keyも許可する
    devise_parameter_sanitizer.permit(:account_update, keys:[:group_key])
  end
end
