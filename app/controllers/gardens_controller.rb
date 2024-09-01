class GardensController < ApplicationController
  def index
    @gardens = Garden.all
  end

  def show
    @garden = Garden.find(params[:id])
  end

  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(garden_params)

    if @garden.save
      redirect_to gardens_path, notice: "garden was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

private

  def garden_params
    params.require(:garden).permit(:name, :location, :notes, :user_id)
  end
end
