class Api::V1::SuppliersController < ApiController

	before_action :authenticate

	def index
		@supplier = Supplier.all
		
		respond_to do |format|
			format.json { render json: @supplier }
		end
	end

	def create
		@supplier = Supplier.new(supplier_params)

		if @supplier.save
			render json: @supplier, status: 200, location: @supplier
		else
			render json: @supplier.errors, status: 422
		end
	end

	private

	def supplier_params
		params.require(:supplier).permit(:supplier_name, :supplier_location)
	end

end
