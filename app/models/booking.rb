class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :hostel


  validates :date_from, presence: true
  validates :date_to, presence: true
  validates :number_of_person, presence: true
end
