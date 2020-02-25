module ShowOff
    class Base
        attr_reader :token, :url

        def initialize(token, url)
            @token ||= token
            @url = url
            @widget_service = ShowOff::Services::WidgetApiServices.new
        end

    end
end