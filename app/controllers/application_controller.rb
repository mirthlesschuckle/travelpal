class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def authenticate_user!
    unless user_signed_in?
      flash[:alert] = 'You must be signed in to view this page.'
      redirect_to new_user_session_path
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:photo, :bio])
    devise_parameter_sanitizer.permit(:account_update, keys: [:photo, :bio])
  end
end
