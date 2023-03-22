class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :destination

  has_many :matches, dependent: :destroy
  has_many :matched_users, through: :matches, source: :user

  def available_on?(start_date, end_date)
    (self.start_date..self.end_date).overlaps?(start_date..end_date)
  end
end
