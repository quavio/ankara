require 'spec_helper'

describe "deals/edit.html.slim" do
  before(:each) do
    @deal = assign(:deal, stub_model(Deal,
      :title => "MyString",
      :description => "MyText",
      :original_price => 1.5,
      :deal_price => 1.5,
      :store_id => 1,
      :max_purchases => 1,
      :min_purchases => 1
    ))
  end

  it "renders the edit deal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => deals_path(@deal), :method => "post" do
      assert_select "input#deal_title", :name => "deal[title]"
      assert_select "textarea#deal_description", :name => "deal[description]"
      assert_select "input#deal_original_price", :name => "deal[original_price]"
      assert_select "input#deal_deal_price", :name => "deal[deal_price]"
      assert_select "input#deal_store_id", :name => "deal[store_id]"
      assert_select "input#deal_max_purchases", :name => "deal[max_purchases]"
      assert_select "input#deal_min_purchases", :name => "deal[min_purchases]"
    end
  end
end
