class Api::V1::WarehousesController < ApiController

	before_action :authenticate

	def index
		@warehouse = Warehouse.all
		
		respond_to do |format|
			format.json { render json: @warehouse }
		end
	end

	def create
		@warehouse = Warehouse.new(warehouse_params)

		if @warehouse.save
			render json: @warehouse, status: 200, location: @warehouse
		else
			render json: @warehouse.errors, status: 422
		end
	end

	private

	def warehouse_params
		params.require(:warehouse).permit(:warehouse_name, :warehouse_location)
	end

end
