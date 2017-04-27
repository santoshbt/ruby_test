require 'rails_helper'

RSpec.describe "cuisines/edit", :type => :view do
  before(:each) do
    @cuisine = assign(:cuisine, Cuisine.create!(
      :name => "MyString",
      :rating => 1,
      :references => ""
    ))
  end

  it "renders the edit cuisine form" do
    render

    assert_select "form[action=?][method=?]", cuisine_path(@cuisine), "post" do

      assert_select "input#cuisine_name[name=?]", "cuisine[name]"

      assert_select "input#cuisine_rating[name=?]", "cuisine[rating]"

      assert_select "input#cuisine_references[name=?]", "cuisine[references]"
    end
  end
end
