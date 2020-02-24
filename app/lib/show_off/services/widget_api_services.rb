# CREATE A common function will I am targetting to use for all the api call which we will make to showoff widgets api.
require 'rest-client'

module ShowOff
    module Services
        class WidgetApiServices

            END_POINT = 'https://showoff-rails-react-production.herokuapp.com'.freeze
            # BASED ON REQUIREMENT WE CAN ADD MORE HTTP METHODS
            HTTP_METHODS = [:get, :post] 
            
            
            HTTP_METHODS.each do |http_method_name|
                define_method("perform_#{http_method_name}") do | path, params={}, headers={}|
                    
                    # TODO: below mentioned headers declaration code needs to refactor
                    # headers = herder.merge('Content-Type' => 'application/json') if params.nil?
                    body_parser(RestClient::Request.execute(
                        method:  http_method_name, 
                        url:     END_POINT+path,
                        payload: params,
                        headers: headers
                    ))
                end
            end

            private

            def body_parser(response)
                JSON.parse(response)
            end
        end
    end
end