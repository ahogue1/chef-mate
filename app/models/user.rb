class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :meals, foreign_key: 'chef_id'
  has_many :bookings, foreign_key: 'buyer_id', through: :meals
end
