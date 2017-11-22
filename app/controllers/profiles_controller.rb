class ProfilesController < ApplicationController

  def show
    @user = User.find(params[:id])
    @booking = Booking.where(:buyer_id == @user[:id])
    @meal = @user.meals
  end

end
