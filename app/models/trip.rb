class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :destination

  validates :start_date, presence: true
  validates :end_date, presence: true

  has_many :matches, dependent: :destroy
  has_many :matched_users, through: :matches, source: :user

  has_many :chat_requests, dependent: :destroy

  def available_on?(start_date, end_date)
    (self.start_date..self.end_date).overlaps?(start_date..end_date)
  end

end
