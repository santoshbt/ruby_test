require 'rails_helper'

RSpec.describe "cuisines/index", :type => :view do
  before(:each) do
    assign(:cuisines, [
      Cuisine.create!(
        :name => "Name",
        :rating => 1,
        :references => ""
      ),
      Cuisine.create!(
        :name => "Name",
        :rating => 1,
        :references => ""
      )
    ])
  end

  it "renders a list of cuisines" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
