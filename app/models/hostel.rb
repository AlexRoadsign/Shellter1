class Hostel < ApplicationRecord
  belongs_to :user
  has_many :bookings
end
