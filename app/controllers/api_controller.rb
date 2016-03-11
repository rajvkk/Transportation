class ApiController < ActionController::Base

	private

	def authenticate
		@user = User.find_by_api_key(params[:api_key])
		
		if @user.exists?
			respond_to do |format|
			  format.json { render json: @user.to_json, status: 200 }
			end
		end

	end

end
