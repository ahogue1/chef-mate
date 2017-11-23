class Meal < ApplicationRecord
  belongs_to :chef, class_name: "User"
  has_many :bookings
  mount_uploader :photo, PhotoUploader
  validates :name,:photo,:price,:address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
