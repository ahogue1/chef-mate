class AddFormattedAddressToMeals < ActiveRecord::Migration[5.0]
  def change
    add_column :meals, :formatted_address, :string
  end
end
