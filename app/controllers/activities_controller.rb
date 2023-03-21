class ActivitiesController < ApplicationController
  before_action :set_destination
  before_action :set_activity, only: [:show]

  def index
    @activities = @destination.activities
  end

  def show
  end

  private

  def set_destination
    @destination = Destination.find(params[:destination_id])
  end

  def set_activity
    @activity = @destination.activities.find(params[:id])
  end

end
