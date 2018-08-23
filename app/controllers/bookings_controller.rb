class BookingsController < ApplicationController

  def index
    @booking = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @drone = Drone.find(params[:drone_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.drone = @drone

    if @booking.save
      redirect_to @drone
    else
      render 'drone/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:days)
  end
end
