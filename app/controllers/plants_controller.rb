class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)

    if @plant.save
      redirect_to plants_path, notice: "Plant was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

private

  def plant_params
    params.require(:plant).permit(:name, :scientific_name, :edible, :pet_safe, :plant_type)
  end
end
