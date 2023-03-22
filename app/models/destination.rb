class Destination < ApplicationRecord
  acts_as_favoritable

  has_many :activities, dependent: :destroy
  has_many :trips, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
