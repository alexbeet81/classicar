class ApplicationController < ActionController::Base
  # every user will need to be signed in before they can do a certain action.
  before_action :authenticate_user!

  # add additional username to sign up and sign in
  def configure_permitted_parameters
    # new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])

    # edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
end
