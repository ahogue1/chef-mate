require 'open-uri'

class Meal < ApplicationRecord
  belongs_to :chef, class_name: "User"
  has_many :bookings
  mount_uploader :photo, PhotoUploader
  validates :name,:photo,:price,:address, presence: true
  after_validation :get_address, if: :address_changed?


  def get_address
    google = "https://maps.googleapis.com/maps/api/geocode/json?address="
    key = ENV['GOOGLE_API_SERVER_KEY']
    url = "#{google}#{self.address}&key=#{key}"
    p address_hash = JSON.parse(open(url).read)["results"][0]

    self.formatted_address = address_hash["formatted_address"]
    self.latitude = address_hash["geometry"]["location"]["lat"]
    self.longitude = address_hash["geometry"]["location"]["lng"]

  end
end
