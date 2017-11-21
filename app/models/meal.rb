class Meal < ApplicationRecord
  belongs_to :chef, class_name: "User"
  has_many :bookings
  mount_uploader :photo, PhotoUploader
end
