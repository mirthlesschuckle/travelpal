class TripsController < ApplicationController
  def new
    @destination = Destination.find(params[:destination_id])
    @trip = Trip.new # Needed to instantiate the form_with
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    @destination = Destination.find(params[:destination_id])
    @trip.save
  end

  private

  def trip_params
    params.require(:trip).permit(:start_date, :end_date, :destination_id, :user_id)
  end
end
