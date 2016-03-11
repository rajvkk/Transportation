class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable

  before_create { |key| key.api_key = key.generate_api_key }

  def generate_api_key
  	loop do 
  		api_token = SecureRandom.base64.tr('+/=', '--')
  		break api_token unless User.exists?(api_key: api_token)
  	end
  end

end
