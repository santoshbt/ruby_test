require "rails_helper"

RSpec.describe CuisinesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cuisines").to route_to("cuisines#index")
    end

    it "routes to #new" do
      expect(:get => "/cuisines/new").to route_to("cuisines#new")
    end

    it "routes to #show" do
      expect(:get => "/cuisines/1").to route_to("cuisines#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cuisines/1/edit").to route_to("cuisines#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/cuisines").to route_to("cuisines#create")
    end

    it "routes to #update" do
      expect(:put => "/cuisines/1").to route_to("cuisines#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cuisines/1").to route_to("cuisines#destroy", :id => "1")
    end

  end
end
