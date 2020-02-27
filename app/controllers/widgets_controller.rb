class WidgetsController < ApplicationController
	before_action :authorize


  def index
  	header = ShowoffHeader.new({ authorization: current_user["token"]["access_token"]}).perform
		widgets = ShowOff::User.new(session[:token], SHOWOFF_USER_WIDGETS, {}, header).widgets
		@widgets = widgets["data"]["widgets"]
  end

  def create
  	header = ShowoffHeader.new({ authorization: current_user["token"]["access_token"], content_type: true }).perform
  	widget = ShowOff::User.new(session[:token], SHOWOFF_CREATE_WIDGETS, widgets_params, header).create_widgets
  	if widget["message"].eql?('Success')
  		flash[:notice] = "Widget created successfully"
  		redirect_back fallback_location: dashboard_path
  	end
  end

  private

  # TODO: Dynamic value needs to enter...
  def widgets_params
  	{
  		"widget": {
  			"name": params[:name],
  			"description": params[:description],
  			"kind": params[:kind]
  		}
  	}
  end

end
