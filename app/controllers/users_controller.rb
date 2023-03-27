class UsersController < ApplicationController
  def dashboard
    @user = current_user
    @trip = @user.trips.first
    @trip ||= Trip.new
  end

  def profile
    @user = User.find(params[:id])
    sent_confirmed = current_user.sent_chat_requests.accepted.includes(:receiver, :trip)
    received_confirmed = current_user.received_chat_requests.accepted.includes(:sender, :trip)
    @buddies = sent_confirmed + received_confirmed
  end

  def show
    @user = current_user
  end

  def my_buddies
    @pending_approval_matches = current_user.sent_chat_requests.pending_approval.includes(:receiver, :trip)
    @awaiting_approval_matches = current_user.received_chat_requests.pending_approval.includes(:sender, :trip)

    sent_confirmed = current_user.sent_chat_requests.accepted.includes(:receiver, :trip)
    received_confirmed = current_user.received_chat_requests.accepted.includes(:sender, :trip)

    sent_reject_confirmed = current_user.sent_chat_requests.declined.includes(:receiver, :trip)
    received_reject_confirmed = current_user.received_chat_requests.declined.includes(:sender, :trip)
    @confirmed_matches = sent_confirmed + received_confirmed + sent_reject_confirmed + received_reject_confirmed
  end


end
