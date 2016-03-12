class Api::V1::StoresController < ApiController

	before_filter :authenticate

	def index
		@store = Store.all
		respond_to do |format|
			format.json { render json: @store }
		end
	end

	def create
		@store = Store.create(params[:store])
	end

end
