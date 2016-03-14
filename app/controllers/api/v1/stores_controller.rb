class Api::V1::StoresController < ApiController

	before_filter :authenticate

	def index
		@store = Store.all
		
		respond_to do |format|
			format.json { render json: @store }
		end
	end

	def create
		@store = Store.new(store_params)

		if @store.save
			render json: @store, status: 200, location: @store
		else
			render json: @store.errors, status: 422
		end
	end

	private

	def store_params
		params.require(:store).permit(:store_name, :store_location)
	end

end
