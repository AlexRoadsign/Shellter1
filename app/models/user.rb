class User < ApplicationRecord
  has_many :hostels
  has_many :bookings
end
