class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :drone, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :days

      t.timestamps
    end
  end
end
