class ApiController < ActionController::Base
	before_filter :authenticate_user!, :parse_request
end
