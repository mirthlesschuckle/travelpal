# # app/channels/chatroom_channel.rb
# include Rails.application.routes.url_helpers
# include CloudinaryHelper

# class ChatroomChannel < ApplicationCable::Channel
#   def subscribed
#     chatroom = Chatroom.find(params[:id])
#     stream_for chatroom
#   end

#   def unsubscribed
#     # Any cleanup needed when channel is unsubscribed
#   end

#   def receive(data)
#     message = Message.create!(content: data["content"], user: current_user, chatroom_id: params[:id])
#     photo_url =  cl_image_path(message.user.photo.key)
#     broadcast_to(chatroom, { content: render_message(message), photo_url: photo_url })
#   end

#   private

#   def render_message(message)
#     ApplicationController.renderer.render(partial: "messages/message", locals: { message: message })
#   end
# end
