require 'spec_helper'

describe "FoodStocks" do
  describe "GET /food_stocks" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get food_stocks_path
      response.status.should be(200)
    end
  end
end