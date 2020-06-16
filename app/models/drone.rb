class Drone < ApplicationRecord

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :owner, foreign_key: :user_id,  class_name: "User"

  mount_uploader :photo, PhotoUploader



  validates :name, presence: true
  validates :brand, presence: true
  validates :autonomy, presence: true
  validates :price, presence: true, numericality: { only_integer: true }

end
