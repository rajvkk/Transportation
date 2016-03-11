class Api::V1::StoreController < ApiController

	before_action :authenticate

	def index
		@stores = Store.all
	end

end
