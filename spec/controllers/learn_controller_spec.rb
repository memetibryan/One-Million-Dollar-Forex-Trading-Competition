require 'rails_helper'

RSpec.describe LearnController, type: :controller do

  describe "GET #to" do
    it "returns http success" do
      get :to
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #trade" do
    it "returns http success" do
      get :trade
      expect(response).to have_http_status(:success)
    end
  end

end
