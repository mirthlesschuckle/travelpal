class DestinationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    if params[:query].present?
      @destinations = Destination.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @destinations = Destination.all
    end
  end

  def show
    @destination = Destination.find(params[:id])
  end
end
