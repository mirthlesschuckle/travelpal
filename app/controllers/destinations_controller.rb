class DestinationsController < ApplicationController
  before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @destinations = Destination.all
  end

  def show
    @destination = Destination.find(params[:id])
    @activities = Activity.where(destination_id: @destination.id)
  end

end
