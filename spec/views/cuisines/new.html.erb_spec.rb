require 'rails_helper'

RSpec.describe "cuisines/new", :type => :view do
  before(:each) do
    assign(:cuisine, Cuisine.new(
      :name => "MyString",
      :rating => 1,
      :references => ""
    ))
  end

  it "renders new cuisine form" do
    render

    assert_select "form[action=?][method=?]", cuisines_path, "post" do

      assert_select "input#cuisine_name[name=?]", "cuisine[name]"

      assert_select "input#cuisine_rating[name=?]", "cuisine[rating]"

      assert_select "input#cuisine_references[name=?]", "cuisine[references]"
    end
  end
end
