require "spec_helper"

describe FoodStocksController do
  describe "routing" do

    it "routes to #index" do
      get("/food_stocks").should route_to("food_stocks#index")
    end

    it "routes to #new" do
      get("/food_stocks/new").should route_to("food_stocks#new")
    end

    it "routes to #show" do
      get("/food_stocks/1").should route_to("food_stocks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/food_stocks/1/edit").should route_to("food_stocks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/food_stocks").should route_to("food_stocks#create")
    end

    it "routes to #update" do
      put("/food_stocks/1").should route_to("food_stocks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/food_stocks/1").should route_to("food_stocks#destroy", :id => "1")
    end

  end
end
