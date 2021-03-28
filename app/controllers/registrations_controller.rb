class RegistrationsController < Devise::RegistrationsController
  protected
  # Function to redirect user to profile creation page after sign up
  def after_sign_up_path_for(resource)
    '/profiles/new'
  end
end