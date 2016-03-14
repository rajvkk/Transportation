class Api::V1::WarehousesController < ApiController

	before_action :authenticate

	def index
		@warehouses = Warehouse.all
		
		respond_to do |format|
			format.json { render json: @warehouses }
		end
	end

	def create
		@warehouse = Warehouse.new(warehouse_params)

		if @warehouse.save
			render json: @warehouse, status: 200
		else
			render json: @warehouse.errors, status: 422
		end
	end

	def show
    @warehouse = Warehouse.find(params[:id])
    render json: @warehouse, status: 200
  end


	private

	def warehouse_params
		params.require(:warehouse).permit(:name, :location)
	end

end
