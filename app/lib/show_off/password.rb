# Password

module ShowOff
  class Password < Base

    # Each call will handen there own params and headers...
    def initialize(token, url, params = {})
      super(token, url)
      @params = params
      @header = ShowoffHeader.new().perform
      @params.merge!(client_id: ENV["SHOWOFF_CLIENT_ID"], client_secret: ENV["SHOWOFF_CLIENT_SECRET"])
    end

    def reset_password
      begin
        @widget_service.perform_post(@url, @params, @header)
      rescue StandardError => e
        puts e
      end
    end
  end
end
