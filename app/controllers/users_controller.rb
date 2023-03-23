class UsersController < ApplicationController
  def profile
    @user = current_user
  end

  def show
    @user = current_user
  end
end
