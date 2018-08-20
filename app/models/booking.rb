class Booking < ApplicationRecord
  belongs_to :drones
  belongs_to :users

  validates :days, presence: true, numericality: { only_integer: true }
end
