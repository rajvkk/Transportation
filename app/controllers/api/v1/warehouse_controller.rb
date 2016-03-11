class Api::V1::WarehouseController < ApiController

	before_action :authenticate

	def index
		@warehouse = Warehouse.all
	end

end
