class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable

  before_create :generate_api_key

  def generate_api_key
  	self.api_key = SecureRandom.base64.tr('+/=', '--')
  end

end
