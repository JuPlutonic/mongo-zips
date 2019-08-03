# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :configure_permitted_parameters, if: :device_controller?
  helper_method :current_time

  def current_time
    current_time = DateTime.now
  end
  # OPTIMIZE: make current_time method give time in EST

  # def configure_permitted_parameters
  #   device_parameter_sanitizer.permit(:sign_up, keys: [:username])
  #   device_parameter_sanitizer.permit(:account_update, keys: [:username])
  # end
end
