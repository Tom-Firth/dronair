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
  end

  def update
    @drone = Drone.find(params[:id])
    @drone.update(drone_params)
    redirect_to drone_path(@drone)
  end

  def destroy
    @drone = Drone.find(params[:id])
    @drone.destroy
    redirect_to drones_path
  end

  def my_drones
    @my_drones = Drone.where(owner: current_user.id)
  end

   private

  def drone_params
    params.require(:drone).permit(:name, :brand, :autonomy, :price, :video)
  end

end
