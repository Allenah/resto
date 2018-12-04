class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  validates :start_time, presence: true
  validates :end_time, presence: true
end
