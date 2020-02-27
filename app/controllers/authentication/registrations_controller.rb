class Authentication::RegistrationsController < ApplicationController
  include UserUtility

  def new
    @user = User.new
  end

  def create
    user = User.new(params[:user])
    if user.valid? && user.register
      session[:user] = user_hash(user)
      redirect_to dashboard_path
    else
      flash[:error] = "Signup error"
      render "new"
    end
  end
end
