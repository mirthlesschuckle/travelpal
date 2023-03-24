class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  acts_as_favoritor

  has_one_attached :photo
  has_many :trips, dependent: :destroy

  has_many :matches, dependent: :destroy
  has_many :matched_trips, through: :matches, source: :trip
  has_many :received_matches, through: :trips, source: :matches
  has_many :reviews, dependent: :destroy

  has_many :sent_chat_requests, class_name: 'ChatRequest', foreign_key: 'sender_id', dependent: :destroy
  has_many :received_chat_requests, class_name: 'ChatRequest', foreign_key: 'receiver_id', dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
