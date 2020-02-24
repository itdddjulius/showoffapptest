class DashboardController < ApplicationController
  
  def show
    # This has to be in session
    session[:token] = "800bca661d65078ad2f44167794a4a7fcc9bf0c523a70476fe0b18ae453bf024"
    widget = ShowOff::Widgets.new(session[:token], SHOWOFF_SEARCH_AND_VISIBLE)
    p widget.visible
    # p search
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
