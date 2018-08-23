class DronesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @drones = Drone.all
  end

  def new
    @drone = Drone.new
  end

  def create
    @drone = Drone.new(drone_params)
    @drone.owner = current_user

    if @drone.save
      redirect_to drone_path(@drone)
    else
      render :new
    end
  end

  def show
    @drone = Drone.find(params[:id])
  end

  def edit
    @drone = Drone.find(params[:id])
    # @my_drones = Drone.where(owner: current_user.id)
  end

  def update
    # @my_drones = Drone.where(owner: current_user.id)
    # @my_drones.update(drone_params)
        # @my_drones.update(drone_params)
    @drone = Drone.find(params[:id])
    @drone.update(drone_params)
    redirect_to my_drones_path
  end

  def destroy
    @drone = Drone.find(params[:id])
    @drone.destroy
    redirect_to my_drones_path
  end

  def my_drones
    @my_drones = Drone.where(owner: current_user.id)
  end

  def change
    @drone = Drone.find(params[:id])
    @drone.available = !@drone.available
    @drone.save
    redirect_to @drone
  end

   private

  def drone_params
    params.require(:drone).permit(:name, :brand, :autonomy, :price, :video, :available)
  end

end
