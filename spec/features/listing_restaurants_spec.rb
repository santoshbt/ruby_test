require 'rails_helper'

RSpec.feature "List all Restaurants" do
  before do 
  	@indian_restaurant = Restaurant.create(name:'Great Indian Thali')  
  	@chinese_restaurant = Restaurant.create(name:'Chinese Restaurant')  
  end

  scenario "shows a list of registered restaurants" do
   visit '/'
   expect(page).to have_content('List of Restaurants')
   expect(page).to have_content(@indian_restaurant.name)
   expect(page).to have_content(@chinese_restaurant.name)
   expect(page).to have_link('Hard Delete', href:restaurant_path(@indian_restaurant.id))
   expect(page).to have_link('Soft Delete', href:"/restaurants/#{@indian_restaurant.id}/soft_delete")
  end
end
