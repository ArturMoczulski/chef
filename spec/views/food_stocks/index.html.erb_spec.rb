require 'spec_helper'

describe "food_stocks/index" do
  before(:each) do
    assign(:food_stocks, [
      stub_model(FoodStock,
        :food => nil,
        :user => nil,
        :quantity => 1
      ),
      stub_model(FoodStock,
        :food => nil,
        :user => nil,
        :quantity => 1
      )
    ])
  end

  it "renders a list of food_stocks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
