class Drone < ApplicationRecord
  belongs_to :owner, class_name: "User"

  validates :name, presence: true
  validates :brand, presence: true
  validates :autonomy, presence: true
  validates :price, presence: true, numericality: { only_integer: true }

end
