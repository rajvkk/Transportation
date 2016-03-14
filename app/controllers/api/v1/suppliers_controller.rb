class Api::V1::SuppliersController < ApiController

	before_action :authenticate

	def index
		@suppliers = Supplier.all
		
		respond_to do |format|
			format.json { render json: @suppliers }
		end
	end

	def create
		@supplier = Supplier.new(supplier_params)

		if @supplier.save
			render json: @supplier, status: :created
		else
			render json: @supplier.errors, status: :unprocessable_entity
		end
	end

	def show
    @supplier = Supplier.find(params[:id])
    render json: @supplier, status: 200
	end

	private

	def supplier_params
		params.require(:supplier).permit(:name, :contactnumber)
	end

end
