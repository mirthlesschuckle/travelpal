class TripsController < ApplicationController

  def show
    @trip = Trip.find(params[:id])
  end

  def new
    @destination = Destination.find(params[:destination_id])
    @trip = Trip.new # Needed to instantiate the form_with
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])
    if @trip.update(trip_params)
      flash[:success] = "Trip successfully updated"
      redirect_to trip_path(@trip)
    else
      render :edit
    end
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    @destination = Destination.find(params[:destination_id])
    @trip.save
    if @trip.save
      redirect_to trip_path(@trip), notice: "Trip successfully created!"
    else
      render :new
    end
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    # No need for app/views/trips/destroy.html.erb
    redirect_to trips_path, status: :see_other
  end

  private

  def trip_params
    params.require(:trip).permit(:start_date, :end_date, :destination_id, :user_id)
  end
end
