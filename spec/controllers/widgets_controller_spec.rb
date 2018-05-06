require 'rails_helper'


RSpec.describe WidgetsController, type: :controller do
  describe "GET #index" do
    before(:each) do
      get :index
    end

    it "returns 4 records from the database" do
      products_response = response.body
      expect(products_response[:products]).to have(4).items
    end

    it {should respond_with 200}
    it {should respond_with 200}
    it {should respond_with 200}
    it {should respond_with 200}
  end

end
