class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  has_many :reviews, dependent: :destroy
  validates :start_time, presence: true
  validates :end_time, presence: true
end
