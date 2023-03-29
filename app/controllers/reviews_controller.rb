class ReviewsController < ApplicationController
  before_action :set_user, only: %i[new create]

  def index
    @review = current_user.reviews
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = @user
    if @review.save!
      redirect_to  dashboard_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end
  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to user_profile_path(@review.user),
    status: :see_other
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def review_params
    params.require(:review).permit(:content, :receiver_id)
  end
end
