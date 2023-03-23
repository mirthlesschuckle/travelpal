class UsersController < ApplicationController
  def profile
    @user = current_user
    @trip = @user.trips.first
    @trip ||= Trip.new
  end
end
