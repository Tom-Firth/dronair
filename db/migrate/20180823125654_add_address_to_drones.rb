class AddAddressToDrones < ActiveRecord::Migration[5.2]
  def change
    add_column :drones, :address, :string
  end
end
