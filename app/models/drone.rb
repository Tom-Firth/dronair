class Drone < ApplicationRecord
  belongs_to :owner, foreign_key: :user_id,  class_name: "User"

  validates :name, presence: true
  validates :brand, presence: true
  validates :autonomy, presence: true
  validates :price, presence: true, numericality: { only_integer: true }

end
