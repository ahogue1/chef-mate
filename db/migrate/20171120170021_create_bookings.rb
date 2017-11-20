class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.date :date
      t.integer :price
      t.references :meal, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :people

      t.timestamps
    end
  end
end
