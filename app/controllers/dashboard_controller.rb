class DashboardController < ApplicationController
  before_action :authorize

  def show
    widgets = ShowOff::Widgets.new(current_user["token"]["access_token"], SHOWOFF_SEARCH_AND_VISIBLE).visible
    @widgets = widgets["data"]["widgets"]
  end

  # AJAX request
  def search
    p "2222222"
    p params
    widgets = ShowOff::Widgets.new(current_user["token"]["access_token"], SHOWOFF_SEARCH_AND_VISIBLE, { term: params[:search].strip }).search
    @widgets = widgets["data"]["widgets"]

    respond_to do |format|
      format.js
    end
  end
end
