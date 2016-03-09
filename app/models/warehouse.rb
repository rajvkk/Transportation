class Warehouse < ActiveRecord::Base
  has_many :suppliers
  has_many :stores, through: :suppliers
end
