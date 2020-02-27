class ShowoffHeader
	attr_reader :options

	def initialize(options={})
		@options = options
	end

	def perform
		header = {}
		header.merge!('Authorization': "Bearer #{@options[:authorization]}") if @options[:authorization]
		header.merge!('Content-Type': 'application/json') if @options[:content_type]
		header
	end
end