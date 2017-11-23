class ProfilesController < ApplicationController

  def show
    @user = User.find(params[:id])
    @bookings = @user.bookings
    @meals = @user.meals
  end



end
