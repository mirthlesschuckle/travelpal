class MatchesController < ApplicationController
  def index
    @matches = current_user.matches
    @trip = Trip.find(params[:trip_id])
    @matches = @matches.select { |match| match.trip.destination == @trip.destination }
    # raise
  end

  def create
    trip = current_user.trips.find_by(id: params[:trip_id])
    all_trips_with_same_destination = Trip.where(destination_id: trip.destination_id).where.not(user_id: current_user.id)
    potential_matches = all_trips_with_same_destination.select { |other_trip| trip.available_on?(other_trip.start_date, other_trip.end_date) }

    potential_matches.each do |other_trip|
      existing_match = Match.find_by(user: current_user, trip: other_trip) # Check for existing matches
      next if existing_match

      match = Match.create(user: current_user, trip: other_trip) # Use current_user instead of other_trip.user
    end
    redirect_to trip_matches_path(params[:trip_id])
  end


end
