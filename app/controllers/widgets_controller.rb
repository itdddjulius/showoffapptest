class WidgetsController < ApplicationController
  before_action :authorize

  def index
    widgets = ShowOff::User.new(current_user["token"]["access_token"], SHOWOFF_USER_WIDGETS, {}).widgets
    @widgets = widgets["data"]["widgets"]
  end

  def create
    widget = ShowOff::User.new(current_user["token"]["access_token"], SHOWOFF_CREATE_WIDGETS, widgets_params).create_widgets
    if widget["message"].eql?("Success")
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
        "kind": params[:kind],
      },
    }
  end
end
