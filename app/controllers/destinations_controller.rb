class DestinationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    if params[:query].present?
      @destinations = Destination.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @destinations = Destination.all
    end

    @markers = (@destinations.geocoded.map do |destination|
      {
        lat: destination.latitude,
        lng: destination.longitude
      }
    end)
  end

  def show
    @destination = Destination.find(params[:id])
    @activities = Activity.where(destination_id: @destination.id)
  end
end
