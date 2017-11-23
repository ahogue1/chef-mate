class ProfilesController < ApplicationController

  def show
    @user = User.find(params[:id])
    @bookings = @user.bookings
    @meals = @user.meals
  end

  def update
    @user = User.find(params[:id])
    @bookings = user.bookings
      @booking.update(booking_params)
  end

end
