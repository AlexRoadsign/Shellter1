class Hostel < ApplicationRecord

  belongs_to :user
  has_attachments :photos, maximum: 5
  has_many :bookings
  has_many :user_bookings, through: :bookings, source: :user

  geocoded_by :full_address
  after_validation :geocode,  if: :address_changed?

  def full_address
    [address, city].join(', ')
  end

  validates :name, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :category, presence: true
  validates :available_from, presence: true
  validates :available_until, presence: true
  validates :photos, presence: true
end
