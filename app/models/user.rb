class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :restaurants
  has_many :bookings
  has_many :reviews, through: :bookings
  # Do we need validations for user or does Devise handle?

  def booked_restaurant?(restaurant_id)
    bookings.where(user_id: id, restaurant_id: restaurant_id).any?
  end
end
