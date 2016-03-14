class Api::V1::StoresController < ApiController

	before_filter :authenticate

	def index
		@stores = Store.all
		
		respond_to do |format|
			format.json { render json: @stores }
		end
	end

	def create
		@store = Store.new(store_params)

		if @store.save
			render json: @store, status: 200
		else
			render json: @store.errors, status: 422
		end
	end

	def show
    @store = Store.find(params[:id])
    render json: @store, status: 200
	end


	private

	def store_params
		params.require(:store).permit(:name, :location)
	end

end
