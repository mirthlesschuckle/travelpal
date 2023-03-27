class Review < ApplicationRecord
  belongs_to :user
  belongs_to :receiver, class_name: 'User'
  validates :content, presence: true

  # def created_at_cannot_be_in_the_past
  #   if created_at.present? && created_at < Date.today
  #     errors.add(:created_at, "can't be in the past")
  #   end
  # end
end
