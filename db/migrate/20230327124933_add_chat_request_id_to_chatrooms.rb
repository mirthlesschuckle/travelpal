class AddChatRequestIdToChatrooms < ActiveRecord::Migration[7.0]
  def change
    add_reference :chatrooms, :chat_request, null: false, foreign_key: true
  end
end
