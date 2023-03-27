class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all.select { |chatroom| chatroom.chat_request.sender == current_user } + Chatroom.all.select { |chatroom| chatroom.chat_request.receiver == current_user }
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    @chatroom = Chatroom.new
    @chatroom_request = ChatRequest.find(params[:chat_request_id])
    @chatroom.chat_request = @chatroom_request
    @chatroom.name = @chatroom_request.trip.destination.name

    if @chatroom.save
      redirect_to chatrooms_path, notice: "Chatroom created successfully"
    else
      redirect_to my_buddies_path
    end
  end
end
