class User
  include ActiveModel::Validations
  include ActiveModel::Model

  attr_accessor :email, :password, :first_name, :last_name

  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true

  def initialize(params = {})
    @email = params[:email]
    @password = params[:password]
    @first_name = params[:first_name]
    @last_name = params[:last_name]
  end

  def authenticate
    begin
      @user = ShowOff::Authentication.new(nil, SHOWOFF_LOGIN, login_params).authenticate
      return @user
    rescue RestClient::UnprocessableEntity => e
      return false
    end
  end

  def register
    begin
      @user = ShowOff::Authentication.new(nil, SHOWOFF_SIGNUP, register_params).register
      return @user
    rescue RestClient::UnprocessableEntity => e
      return false
    end
  end

  private

  def register_params
    {
      "user": {
        "first_name": @first_name,
        "last_name": @last_name,
        "password": @password,
        "email": @email,
        "image_url": "https://static.thenounproject.com/png/961-200.png",
      },
    }
  end

  def login_params
    {
      "username": @email,
      "password": @password,
    }
  end
end

