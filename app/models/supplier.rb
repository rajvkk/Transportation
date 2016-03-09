class Supplier < ActiveRecord::Base
	belongs_to :store
	belongs_to :warehouse
end
