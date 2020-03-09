class PasswordsController < ApplicationController
  def new
  end

  def create
    password = ShowOff::Password.new(nil, SHOWOFF_RESET_PASSWORD, password_params).reset_password

    if password.present?
      flash[:notice] = password["message"]
      redirect_back fallback_location: dashboard_path
    else
      flash[:error] = "Please enter correct email id"
      render :new
    end
  end

  private

  def password_params
    {
      "user": {
        "email": params[:email],
      },
    }
  end
end

