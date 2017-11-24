class BookingsController < ApplicationController

  before_action :set_booking, only: [:show, :update]

  def create
    @booking = Booking.new(booking_params)
    @booking.confirmed = false
    @booking.buyer = current_user

    @meal = @booking.meal

      if @booking.save
        redirect_to @booking, notice: 'Booking was successfully created.'
      else
         render 'meals/show'
      end
  end

  def show
    @meal = @booking.meal
  end

  def update
    if params[:confirm] == 'true'
      @booking.confirm!
    elsif params[:cancel] == 'true'
      @booking.cancel!
    end

    redirect_to profile_path(current_user)

  end

  def chef
    self.meal.chef_id
  end


  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
      params.require(:booking).permit(:date, :people, :meal_id)
  end
end
