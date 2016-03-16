require "rails_helper"

describe Api::V1::SuppliersController , :type => :request do

  let!(:supplier)     { FactoryGirl.create(:supplier) }
  let!(:user)         { FactoryGirl.create(:user) }

  describe 'api calls' do

    it "Unauthorised without api key" do
      get "/api/v1/suppliers"
      expect(response.status).to eq 401
    end

    it "gets stores list with api key" do
      user = User.first.api_key
      get "/api/v1/suppliers?api_key=#{user}"
      expect(response.status).to eq 200
    end
  end

end