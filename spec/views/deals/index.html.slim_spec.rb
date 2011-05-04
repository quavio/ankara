require 'spec_helper'

describe "deals/index.html.slim" do
  before(:each) do
    assign(:deals, [
      stub_model(Deal,
        :title => "Title",
        :description => "MyText",
        :original_price => 2.5,
        :deal_price => 1.5,
        :store_id => 1,
        :max_purchases => 2,
        :min_purchases => 3
      ),
      stub_model(Deal,
        :title => "Title",
        :description => "MyText",
        :original_price => 2.5,
        :deal_price => 1.5,
        :store_id => 1,
        :max_purchases => 2,
        :min_purchases => 3
      )
    ])
  end

  it "renders a list of deals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 2.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
