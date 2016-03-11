class ApiController < ActionController::Base

	private

	def authenticate
		@user = User.find_by_api_key(params[:api_key])
		
		if @user
			true
		else
			respond_to do |format|
			  format.json { render json: { error: "Unauthorized user", status: 401 } }
			end
		end
	end

end
