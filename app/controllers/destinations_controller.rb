class DestinationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :authenticate_user!, only: :toggle_favorite

  def index
    if params[:query].present?
      @destinations = Destination.where("name ILIKE :query OR country ILIKE :query OR area ILIKE :query", query: "#{params[:query]}%")
      @markers = @destinations.geocoded.map do |destination|
        {
          lat: destination.latitude,
          lng: destination.longitude,
          marker_html: render_to_string(partial: "marker"),
          info_window: render_to_string(partial: "info_window", locals: {destination: destination})
        }
      end
    else
      @destinations = Destination.all
      @markers = @destinations.geocoded.map do |destination|
        {
          lat: destination.latitude,
          lng: destination.longitude,
          marker_html: render_to_string(partial: "marker"),
          info_window: render_to_string(partial: "info_window", locals: {destination: destination})
        }
      end
      # puts "No results found"
    end
  end

  def show
    @destination = Destination.find(params[:id])
    @activities = Activity.where(destination_id: @destination.id)
    is_liked = user_signed_in? ? current_user.favorited?(@destination) : false
    @markers = [{
      lat: @destination.latitude,
      lng: @destination.longitude,
      marker_html: render_to_string(partial: "marker", locals: { is_liked: is_liked }),
      info_window: render_to_string(partial: "info_window", locals: {destination: @destination})}
    ]
  end

  def toggle_favorite
    @destination = Destination.find(params[:id])
    current_user.favorited?(@destination) ? current_user.unfavorite(@destination) : current_user.favorite(@destination)
  end
end
