# Widgets call will handle all the request related to Widget API...

module ShowOff
  class Widgets < Base

    # Each call will handen there own params and headers...
    def initialize(token, url, params = {})
      super(token, url)
      @params = {
        client_id: ENV["SHOWOFF_CLIENT_ID"],
        client_secret: ENV["SHOWOFF_CLIENT_SECRET"],
      }.merge(params)
    end

    def visible
      @widget_service.perform_get(@url, @params)
    end

    # Created an alias method as both are performing the same last....
    alias_method :search, :visible
  end
end

