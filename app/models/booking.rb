class Booking < ApplicationRecord
  belongs_to :drones
  belongs_to :users
end
