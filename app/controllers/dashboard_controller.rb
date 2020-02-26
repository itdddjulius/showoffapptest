class DashboardController < ApplicationController
  before_action :authorize

  def show
    widgets = ShowOff::Widgets.new(current_user["token"]["access_token"], SHOWOFF_SEARCH_AND_VISIBLE).visible
    @widgets = widgets["data"]["widgets"]
  end

  # AJAX request
  def search
  	params = {
  		term: 'brand'
  	}
  	widget = ShowOff::Widgets.new(current_user["token"]["access_token"], SHOWOFF_SEARCH_AND_VISIBLE, params)
    p widget.search
  end
end
