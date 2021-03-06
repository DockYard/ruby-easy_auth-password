class PasswordResetController < ApplicationController
  include EasyAuth::Controllers::PasswordReset

  private

  def after_successful_password_reset_url
    main_app.dashboard_url
  end
end
