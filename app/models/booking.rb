class Booking < ApplicationRecord
  belongs_to :meal
  belongs_to :buyer, class_name: "User"
  before_save :set_price


  def chef
    return self.meal.chef
  end

  def set_price
    self.price = meal.price * people
  end

  def confirm
    self.confirmed = true
  end

  def confirmed?
    self.confirmed
  end

  def cancel
    self.confirmed = false
  end

end
