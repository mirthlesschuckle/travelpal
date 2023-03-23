class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  acts_as_favoritor

  has_many :trips, dependent: :destroy

  has_many :matches, dependent: :destroy
  has_many :matched_trips, through: :matches, source: :trip
  has_many :received_matches, through: :trips, source: :matches

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
