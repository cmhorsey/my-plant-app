class GardenPlantsController < ApplicationController
  def new
    @garden_plant = GardenPlant.new
    @gardens = Garden.all
    @plants = Plant.all
  end

  def create
    @garden_plant = GardenPlant.new(garden_plant_params)
    @gardens = Garden.all
    @plants = Plant.all

    if @garden_plant.save
      redirect_to gardens_path, notice: "Successfully planted."
    else
      render :new, status: :unprocessable_entity
    end
  end

private

  def garden_plant_params
    params.require(:garden_plant).permit(:last_watered, :quantity, :plant_id, :garden_id)
  end
end
