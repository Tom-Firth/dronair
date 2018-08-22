class AddAvailableToDrones < ActiveRecord::Migration[5.2]
  def change
    add_column :drones, :available, :boolean
  end
end
