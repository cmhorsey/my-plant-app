class GardensController < ApplicationController
  def index
    @gardens = Garden.all
  end

  def show
    @garden = Garden.find(params[:id])
  end

  # def new
  #   @garden = Garden.new
  # end

  # def create
  #   @garden = Garden.new(garden_params)

  #   if @garden.save
  #     redirect_to garden_path, notice: "Plant was successfully created."
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

private

  def plant_params
    params.require(:plant).permit(:name, :scientific_name, :edible, :pet_safe)
  end
end
