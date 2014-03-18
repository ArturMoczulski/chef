require 'spec_helper'

describe "food_stocks/new" do
  before(:each) do
    assign(:food_stock, stub_model(FoodStock,
      :food => nil,
      :user => nil,
      :quantity => 1
    ).as_new_record)
  end

  it "renders new food_stock form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", food_stocks_path, "post" do
      assert_select "input#food_stock_food[name=?]", "food_stock[food]"
      assert_select "input#food_stock_user[name=?]", "food_stock[user]"
      assert_select "input#food_stock_quantity[name=?]", "food_stock[quantity]"
    end
  end
end
