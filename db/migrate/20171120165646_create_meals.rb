class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.text :description
      t.string :photo
      t.string :category
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
