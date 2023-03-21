class Destination < ApplicationRecord
  acts_as_favoritable

  has_many :activities, dependent: :destroy
  has_many :trips, dependent: :destroy
end
