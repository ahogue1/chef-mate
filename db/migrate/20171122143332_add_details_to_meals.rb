class AddDetailsToMeals < ActiveRecord::Migration[5.0]
  def change
    add_column :meals, :latitude, :float
    add_column :meals, :longitude, :float
    add_column :meals, :address, :string
  end
end
