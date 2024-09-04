module Users
  class RegistrationsController < Devise::RegistrationsController
    before_action :configure_permitted_parameters

  private

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: %i[username])
      devise_parameter_sanitizer.permit(:account_update, keys: %i[username])
    end
  end
end
