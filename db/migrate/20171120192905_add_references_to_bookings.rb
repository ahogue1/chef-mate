class AddReferencesToBookings < ActiveRecord::Migration[5.0]
  def change
    add_reference :bookings, :meal, foreign_key: true
    add_column :bookings, :buyer_id, :integer
  end
end
