class GardenPlantsController < ApplicationController
  def new
    @garden_plant = GardenPlant.new
    @gardens = current_user.gardens
    @plants = Plant.all
  end

  def update
    @garden_plant = GardenPlant.find(params[:id])
    if @garden_plant.update(last_watered: Date.current)
      redirect_to user_garden_path(@garden_plant.garden), notice: "Plant watered successfully!"
    else
      redirect_to user_garden_path(@garden_plant.garden), alert: "Failed to water the plant."
    end
  end

  def destroy
    garden_plant = GardenPlant.find(params[:id])

    if garden_plant
      garden = garden_plant.garden
      garden_plant.destroy!
      redirect_to user_gardens_path(garden)
    else
      redirect_to user_gardens_path(current_user)
    end
  end

  def create
    @garden_plant = GardenPlant.new(garden_plant_params)
    @gardens = Garden.all
    @plants = Plant.all

    if @garden_plant.save
      redirect_to user_gardens_path(current_user), notice: "Successfully planted."
    else
      render :new, status: :unprocessable_entity
    end
  end

private

  def garden_plant_params
    params.require(:garden_plant).permit(:last_watered, :quantity, :plant_id, :garden_id)
  end
end
