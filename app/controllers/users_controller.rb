class UsersController < ApplicationController
  def dashboard
    @user = current_user
    @trip = @user.trips.first
    @trip ||= Trip.new
  end

  def profile
    @user = User.find(params[:id])
  end
end
