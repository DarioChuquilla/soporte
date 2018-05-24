class Users::RegistrationsController < Devise::RegistrationsController
  private

    def account_update_params
      # devise_parameter_sanitizer.permit(:account_updates, keys: [:nombre, :apellido, :avatar_cache])
      params.require(:user).permit(:nombre, :apellido, :email, :password, :password_confirmation, :avatar, :avatar_cache, :current_password)
    end
end