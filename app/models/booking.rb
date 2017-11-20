class Booking < ApplicationRecord
  belongs_to :meal
  belongs_to :buyer, class_name: "User"
end
