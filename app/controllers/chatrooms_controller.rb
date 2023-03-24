class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all
    @users_in_chatrooms = {}
    @chatrooms.each do |chatroom|
      subquery = chatroom.messages.select(:user_id).distinct.where.not(user_id: current_user.id)
      users = User.where(id: subquery)
      @users_in_chatrooms[chatroom.id] = users.map(&:first_name)
    end
    @chatroom = Chatroom.new
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    if @chatroom.save
      redirect_to chatrooms_path, notice: "Chatroom created successfully"
    else
      render :new
    end
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end
end
