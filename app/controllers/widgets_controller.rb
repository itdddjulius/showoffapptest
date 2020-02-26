class WidgetsController < ApplicationController
	before_action :authorize


  def index
  	p "ssssss"
  	p current_user
  	@header = ShowoffHeader.new({ authorization: current_user["token"]["access_token"]}).perform
		@user = ShowOff::User.new(session[:token], SHOWOFF_USER_WIDGETS, {}, @header)
	  render json: @user.widgets 
	 # create
  end

  def create
  	@header = ShowoffHeader.new({ authorization: current_user["token"]["access_token"], content_type: true }).perform
  	@user = ShowOff::User.new(session[:token], SHOWOFF_CREATE_WIDGETS, widgets_params, @header)
  	render json: @user.create_widgets
  end

  private

  # TODO: Dynamic value needs to enter...
  def widgets_params
  	{
  		"widget": {
  			"name": "A Hidden Widget - This is working",
  			"description": "Widget Is Working",
  			"kind": "visible"
  		}
  	}
  end

end
