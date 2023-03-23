class UsersController < ApplicationController
  def dashboard
    @user = current_user
    @trip = @user.trips.first
    @trip ||= Trip.new
  end
end
