# Authentication 

module ShowOff
    class Authentication < Base

        # Each call will handen there own params and headers...
        def initialize(token, url, params={}, header={})
            super(token, url)
            @params = params
            @header = header
            @params.merge!(grant_type: "password", client_id: ENV['SHOWOFF_CLIENT_ID'], client_secret: ENV['SHOWOFF_CLIENT_SECRET'])
        end

        def authenticate
        	@widget_service.perform_post(@url, @params, @header)
        end
    end
end