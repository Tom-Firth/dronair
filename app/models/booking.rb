class Booking < ApplicationRecord
  belongs_to :drone
  belongs_to :user

  validates :days, presence: true, numericality: { only_integer: true }
end
