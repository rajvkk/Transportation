class Api::V1::SuppliersController < ApiController

	before_action :authenticate

	def index
		@supplier = Supplier.all
		respond_to do |format|
			format.json { render json: @supplier }
		end
	end

	def create
		@supplier = Supplier.create(params[:supplier])
	end

end
