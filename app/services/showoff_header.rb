class ShowoffHeader
	attr_reader :options

	def initialize(options={})
		@options = options
		p "44444444"
		p @options
	end

	def perform
		p "444444ssss44"
		p @options[:authorization]
		header = {}
		header.merge!('Authorization': "Bearer #{@options[:authorization]}") if @options[:authorization]
		header.merge!('Content-Type': 'application/json') if @options[:content_type]
		header
	end
end