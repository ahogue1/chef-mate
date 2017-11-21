class BookingsController < ApplicationController

  before_action :set_booking, only: [:show]

  def create
    @booking = Booking.new(booking_params)
    @booking.buyer = current_user

    @meal = @booking.meal

      if @booking.save
        redirect_to @booking, notice: 'Booking was successfully created.'
      else
         render 'meals/show'
      end
  end

  def show
  end


  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
      params.require(:booking).permit(:date, :people, :meal_id)
  end
end
