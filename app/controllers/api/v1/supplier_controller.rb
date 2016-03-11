class Api::V1::SupplierController < ApiController

	before_action :authenticate

	def index
		@supplier = Supplier.all
	end

end
