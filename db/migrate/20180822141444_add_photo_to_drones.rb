class AddPhotoToDrones < ActiveRecord::Migration[5.2]
  def change
    add_column :drones, :photo, :string
  end
end
