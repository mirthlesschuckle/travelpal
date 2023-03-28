class ChatRequest < ApplicationRecord
  belongs_to :sender, class_name: 'User'
  belongs_to :receiver, class_name: 'User'
  belongs_to :trip
  has_one :chatroom

  enum status: { pending_approval: 0, accepted: 1, declined: 2 }

  scope :pending_approval, -> { where(status: :pending_approval) }
  scope :accepted, -> { where(status: :accepted) }
  scope :declined, -> { where(status: :declined) }

  validates :sender_id, uniqueness: { scope: [:receiver_id, :trip_id], message: "has already sent a chat request for this trip to the selected user" }

end
