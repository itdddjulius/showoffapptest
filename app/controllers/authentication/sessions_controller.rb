class Authentication::SessionsController < ApplicationController

  def new
  	@user = User.new
  end

  def create
  	user = User.new(params[:user][:email], params[:user][:password])

  	if user.valid? && user.authenticate
  		user_hash = user.instance_variables.each_with_object({}) { |var, hash| hash[var.to_s.delete("@")] = user.instance_variable_get(var) }
  		session[:user] = user_hash["user"]["data"]
  		redirect_to dashboard_path
  	else
  		flash.now[:alert] = "Email or password is invalid"
      render "new"
  	end
  end

  def destroy
    session[:user] = nil
    redirect_to '/login'
  end 
  
end
