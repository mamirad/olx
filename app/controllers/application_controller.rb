class ApplicationController < ActionController::Base
	

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :city, :address, :gender, :dob, :contact, :status])
    # devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
    # devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
end
