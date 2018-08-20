class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :drones, foreign_key: true
      t.references :users, foreign_key: true
      t.integer :days

      t.timestamps
    end
  end
end
