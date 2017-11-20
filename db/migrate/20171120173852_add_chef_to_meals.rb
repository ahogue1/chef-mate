class AddChefToMeals < ActiveRecord::Migration[5.0]
  def change
    add_column :meals, :chef_id, :integer
  end
end
