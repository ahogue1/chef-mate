class RemoveUserFromBookings < ActiveRecord::Migration[5.0]
  def change
    remove_reference :bookings, :user, foreign_key: true
  end
end
