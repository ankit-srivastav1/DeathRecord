class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name,:age])
  end


  # def after_sign_in_path_for(resource)
  #   sign_in_url = new_user_session_url
  #   if request.referer == sign_in_url
  #     super
  #   else
  #     stored_location_for(resource) || request.referer || root_path
  #   end
  # end



  private

  def after_sign_out_path_for(resource_or_scope)
    # # If it's admin
    #  if is_admin?(current_user)
    #     admin_path
    # # Otherwise
    #  else
    root_path
  end

  def after_sign_in_path_for(resource_or_scope)

    root_path
  end
end
