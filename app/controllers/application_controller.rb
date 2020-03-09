class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  add_flash_types :notice, :error

  helper_method :current_user

  def current_user
    @current_user ||= session[:user] if session[:user]
  end

  def authorize
    redirect_to "/login" unless current_user
  end

  private

  def root_redirection
    if current_user
      redirect_to dashboard_path
    end
  end
end

