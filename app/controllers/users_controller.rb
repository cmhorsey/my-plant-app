class UsersController < ApplicationController
  # skip_before_action :authenticate_user!, only: %i[homepage]

  def show
    @user = User.find(params[:id])
  end
end
