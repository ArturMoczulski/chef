require 'spec_helper'

describe "food_stocks/show" do
  before(:each) do
    @food_stock = assign(:food_stock, stub_model(FoodStock,
      :food => nil,
      :user => nil,
      :quantity => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/1/)
  end
end
