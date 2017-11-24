class ProfilesController < ApplicationController

  def show
    @user = User.find(params[:id])
    @chef_bookings = Booking.where(chef: @user.id)
    @buyer_bookings = @user.bookings
    @meals = @user.meals
  end



end
