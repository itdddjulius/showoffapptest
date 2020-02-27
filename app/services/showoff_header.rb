class ShowoffHeader
	attr_reader :token

	def initialize(token=nil)
		@token = token
	end

	def perform
		header = {'Content-Type': 'application/json'}
		header.merge!('Authorization': "Bearer #{@token}") if @token
		header
	end
end