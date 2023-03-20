class Destination < ApplicationRecord
  has_many :activities, dependent: :destroy
  has_many :trips, dependent: :destroy
end
