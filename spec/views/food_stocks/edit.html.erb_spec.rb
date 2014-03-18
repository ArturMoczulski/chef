require 'spec_helper'

describe "food_stocks/edit" do
  before(:each) do
    @food_stock = assign(:food_stock, stub_model(FoodStock,
      :food => nil,
      :user => nil,
      :quantity => 1
    ))
  end

  it "renders the edit food_stock form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", food_stock_path(@food_stock), "post" do
      assert_select "input#food_stock_food[name=?]", "food_stock[food]"
      assert_select "input#food_stock_user[name=?]", "food_stock[user]"
      assert_select "input#food_stock_quantity[name=?]", "food_stock[quantity]"
    end
  end
end
