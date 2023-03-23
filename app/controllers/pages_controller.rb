class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @destinations = Destination.order("RANDOM()").limit(3)
    @markers = @destinations.map do |destination|
      {
        lat: destination.latitude,
        lng: destination.longitude,
        marker_html: render_to_string(partial: "marker"),
        info_window: render_to_string(partial: "info_window")
      }
    end
  end
end
