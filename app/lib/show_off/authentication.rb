# Authentication

module ShowOff
  class Authentication < Base
    attr_reader :token, :url

    # Each call will handen there own params and headers...
    def initialize(token, url, params = {})
      super(token, url)
      @params = {
        grant_type: "password",
        client_id: ENV["SHOWOFF_CLIENT_ID"],
        client_secret: ENV["SHOWOFF_CLIENT_SECRET"],
      }.merge(params)
      @header = ShowoffHeader.new().perform
    end

    def authenticate
      @widget_service.perform_post(@url, @params, @header)
    end

    alias_method :register, :authenticate
  end
end
