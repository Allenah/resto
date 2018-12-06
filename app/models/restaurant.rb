class Restaurant < ApplicationRecord
  include PgSearch
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :location, presence: true
  validates :capacity, presence: true
  validates :price, presence: true
  validates :cuisine, presence: true

  pg_search_scope :search_by_cuisine,
      against: [ :cuisine ],
      using: {
        tsearch: { prefix: true } # <-- now `superman batm` will return something!
      }
end
