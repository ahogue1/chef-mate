class RemoveMealFromBookings < ActiveRecord::Migration[5.0]
  def change
    remove_reference :bookings, :meal, foreign_key: true
  end
end
