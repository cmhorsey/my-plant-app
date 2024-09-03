class GardensController < ApplicationController
  before_action :authenticate_user!
  def index
    @gardens = current_user.gardens
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
      redirect_to user_gardens_path, notice: "garden was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

private

  def garden_params
    params.require(:garden).permit(:name, :location, :notes, :user_id)
  end
end
