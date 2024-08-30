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

  # def create
  #   @plant = Plant.new(plant_params)

  #   if @plant.save
  #     redirect_to plants_path
  #   else
  #     render :new
  #   end
  # end

  def create
    @plant = Plant.new(plant_params)

    if @plant.save
      redirect_to plants_path, notice: "Plant was successfully created." # Redirects upon success
    else
      render :new, status: :unprocessable_entity # Re-renders form with 422 status
    end
  end

private

  def plant_params
    params.require(:plant).permit(:name, :scientific_name, :edible, :pet_safe)
  end
end
