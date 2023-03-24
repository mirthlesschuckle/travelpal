class ChatRequestsController < ApplicationController
  before_action :set_chat_request, only: [:update]

  def create
    @chat_request = ChatRequest.new(chat_request_params)
    @chat_request.sender = current_user
    @chat_request.status = :pending_approval

    if @chat_request.save
      redirect_to my_buddies_path, notice: 'Chat request sent.'
    else
      redirect_to trip_matches_path(params[:chat_request][:trip_id]), alert: 'Could not send chat request.'
    end
  end

  def update
    if params[:confirm] == 'yes'
      @chat_request.update(status: :accepted)
      flash[:notice] = 'Chat request confirmed.'
    else
      @chat_request.update(status: :declined)
      flash[:notice] = 'Chat request declined.'
    end

    redirect_to my_buddies_path
  end

  private

  def set_chat_request
    @chat_request = ChatRequest.find(params[:id])
  end

  def chat_request_params
    params.require(:chat_request).permit(:receiver_id, :trip_id)
  end
end
