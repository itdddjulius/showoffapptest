class ShowoffHeader
	attr_reader :token, :options

	def initialize(token, options={})
		@token ||= token 
		@options = options
	end

	def perform
		header = {}
		header.merge!('Authorization': "Bearer #{@token}")
		header.merge!('Content-Type': 'application/json') if options[:content_type]
		header
	end
end