# Logged in User Widgets 

module ShowOff

    class User < Base

        # Each call will handen there own params and headers...
        def initialize(token, url, params={}, header={})
            super(token, url)
            @params = params
            @header = header
            @params.merge!(client_id: ENV['SHOWOFF_CLIENT_ID'], client_secret: ENV['SHOWOFF_CLIENT_SECRET'])
        end

        def widgets
            @widget_service.perform_get(@url, @params, @header)
        end

        def create_widgets
            @widget_service.perform_post(@url, @params, @header)
        end
    end
end