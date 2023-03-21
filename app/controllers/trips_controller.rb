class TripsController < ApplicationController
  def new
    @trip = Trip.new # Needed to instantiate the form_with
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.save # Will raise ActiveModel::ForbiddenAttributesError
  end

  private

  def trip_params
    params.require(:trip).permit(:start_date, :end_date, :destination_id, :user_id)
  end
end
