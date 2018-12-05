class Restaurant < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :location, presence: true
  validates :capacity, presence: true
  validates :price, presence: true
  validates :cuisine, presence: true
end
