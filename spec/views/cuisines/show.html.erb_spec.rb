require 'rails_helper'

RSpec.describe "cuisines/show", :type => :view do
  before(:each) do
    @cuisine = assign(:cuisine, Cuisine.create!(
      :name => "Name",
      :rating => 1,
      :references => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
  end
end
