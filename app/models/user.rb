class User
  include ActiveModel::Validations
  include ActiveModel::Model


  attr_accessor :email, :password

  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
  validates :password, presence: true

  def initialize(email=nil, password=nil)
    @email = email
    @password = password
  end

  def authenticate
  	begin
	  	@header = ShowoffHeader.new({ content_type: true }).perform
	  	@user = ShowOff::Authentication.new(nil, SHOWOFF_LOGIN, widgets_params, @header).authenticate
	  	return @user
	  rescue RestClient::UnprocessableEntity => e
	  	return false
  	end  	
  end

  private 

  def widgets_params
  	{
  		"username": @email,
  		"password": @password
  	}
  end
end