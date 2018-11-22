class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name,:age])
    end

    private

    def after_sign_out_path_for(resource_or_scope)
      # # If it's admin
      #  if is_admin?(current_user)
      #     admin_path
      # # Otherwise
      #  else
          root_path
       end
    end
