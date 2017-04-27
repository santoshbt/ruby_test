class AddDeleteFlagToRestaurants < ActiveRecord::Migration[5.0]
  def change
  	add_column :restaurants, :delete_flag, :boolean, default: false
  end
end
