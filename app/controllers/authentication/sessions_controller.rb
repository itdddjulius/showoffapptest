class Authentication::SessionsController < ApplicationController
  include UserUtility

  def new
    @user = User.new
  end

  def create
    user = User.new(params[:user])

    if user.valid? && user.authenticate
      session[:user] = user_hash(user)
      redirect_to dashboard_path
    else
      flash[:error] = "Email or password is invalid"
      render "new"
    end
  end

  def destroy
    session[:user] = nil
    redirect_to "/login"
  end
end
