class Api::V1::SuppliersController < ApiController

	before_action :authenticate

	def index
		if params[:store_id]
      @store = Store.find(params[:store_id])
      @suppliers = @store.suppliers
    elsif params[:warehouse_id]
      @warehouse = Warehouse.find(params[:warehouse_id])
      @suppliers = @warehouse.suppliers
    else
		@suppliers = Supplier.all
		end
		
		respond_to do |format|
			format.json { render json: @suppliers }
		end
	end

	def create
		if params[:store_id]
      @store = Store.find(params[:store_id])
      @supplier = @store.suppliers.new(supplier_params)
    elsif params[:warehouse_id]
      @warehouse = Warehouse.find(params[:warehouse_id])
      @supplier = @warehouse.suppliers.new(supplier_params)
    else
			@supplier = Supplier.new(supplier_params)
		end

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
