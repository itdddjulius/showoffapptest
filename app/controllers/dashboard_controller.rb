class DashboardController < ApplicationController
  
  def show
    # This has to be in session
    session[:token] = "9b38afe6794709bb9ed0f45e212e3ce4f6c4391340a70933c5488b2b4aa200dc"
    widget = ShowOff::Widgets.new(session[:token], SHOWOFF_SEARCH_AND_VISIBLE)
    p "3333333"
    p widget
    p widget.visible
    # p search

    render text: 'OK'
  end

  # AJAX request
  def search
  	params = {
  		term: 'brand'
  	}
  	widget = ShowOff::Widgets.new(session[:token], SHOWOFF_SEARCH_AND_VISIBLE, params)
    p widget.search
  end
end
