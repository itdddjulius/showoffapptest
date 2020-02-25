class WidgetsController < ApplicationController

  def index
		session[:token] = '47f0ac2e9712a5f23801d15e334e6c498345b8b04820b08e15146d6e056ac5f0'
		@header = ShowoffHeader.new(session[:token]).perform
		@user = ShowOff::User.new(session[:token], SHOWOFF_USER_WIDGETS, {}, @header)
	  render json: @user.widgets 
	 # create
  end

  def create
  	@header = ShowoffHeader.new(session[:token], { content_type: true }).perform
  	@user = ShowOff::User.new(session[:token], SHOWOFF_CREATE_WIDGETS, widgets_params, @header)
  	render json: @user.create_widgets
  end

  private

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
