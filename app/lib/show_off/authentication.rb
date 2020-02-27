# Authentication

module ShowOff
  class Authentication < Base

    # Each call will handen there own params and headers...
    def initialize(token, url, params = {})
      super(token, url)
      @params = params
      @header = ShowoffHeader.new().perform
      @params.merge!(grant_type: "password", client_id: ENV["SHOWOFF_CLIENT_ID"], client_secret: ENV["SHOWOFF_CLIENT_SECRET"])
    end

    def authenticate
      @widget_service.perform_post(@url, @params, @header)
    end

    alias_method :register, :authenticate
  end
end
