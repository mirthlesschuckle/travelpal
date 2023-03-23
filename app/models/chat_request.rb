class ChatRequest < ApplicationRecord
  belongs_to :sender, class_name: 'User'
  belongs_to :receiver, class_name: 'User'
  belongs_to :trip

  enum status: { pending_approval: 0, accepted: 1, declined: 2 }

  scope :pending_approval, -> { where(status: :pending_approval) }
  scope :accepted, -> { where(status: :accepted) }
  scope :declined, -> { where(status: :declined) }
end
