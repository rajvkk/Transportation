class Store < ActiveRecord::Base
	has_many :suppliers
	has_many :warehouses, through: :suppliers
end
