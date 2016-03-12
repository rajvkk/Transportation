class Api::V1::WarehousesController < ApiController

	before_action :authenticate

	def index
		@warehouse = Warehouse.all
		respond_to do |format|
			format.json { render json: @warehouse }
		end
	end

	def create
		@warehouse = Warehouse.create(params[:warehouse])
	end

end
