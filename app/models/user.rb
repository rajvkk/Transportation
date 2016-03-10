
require 'digest/sha1'

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable

  before_create :set_api_key

  def set_api_key(username)
  	self.api_key = Digest::SHA1.hexdigest(username)
  end

end
