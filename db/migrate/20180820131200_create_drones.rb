class CreateDrones < ActiveRecord::Migration[5.2]
  def change
    create_table :drones do |t|
      t.string :name
      t.string :brand
      t.string :autonomy
      t.integer :price
      t.string :video
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
