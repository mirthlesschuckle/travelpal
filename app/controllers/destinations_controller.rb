class DestinationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :authenticate_user!, only: :toggle_favorite

  def index
    @destinations = Destination.all
  end

  def show
    @destination = Destination.find(params[:id])
  end

  def toggle_favorite
    @destination = Destination.find(params[:id])
    current_user.favorited?(@destination) ? current_user.unfavorite(@destination) : current_user.favorite(@destination)
  end
end
