class BookingsController < ApplicationController

  def index
    @booking = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.drone = params[:id]

    if @booking.save
      redirect_to @booking
    else
      render new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:days)
  end
end
