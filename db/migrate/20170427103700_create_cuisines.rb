class CreateCuisines < ActiveRecord::Migration[5.0]
  def change
    create_table :cuisines do |t|
      t.string :name
      t.integer :rating
      t.restaurant :references

      t.timestamps
    end
  end
end
