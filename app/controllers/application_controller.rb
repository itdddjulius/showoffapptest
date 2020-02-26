class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	helper_method :current_user
  
  def current_user
  	p session[:user]
  	@current_user ||= session[:user] if session[:user]
  end

  def authorize
  	p "22222222222"
  	p current_user
    redirect_to '/login' unless current_user
  end

end
