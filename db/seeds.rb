# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Drone.delete_all
User.delete_all

users = ["Nay", "Andy", "Matho", "Tom", "Cartos"]
drones = [""]

users.each do |user|

  mail = "#{user}@dronair.io"

  user = User.create(email: mail, user_name: user, password: "DronAir2018")
    rand(1..3).times do |y|
      drone = Drone.new(
        name: "drone - #{y}",
        brand: "brand - #{y}",
        autonomy: "autonomy - #{y}000",
        price: "#{y}00",
        video: "#{y}K"
      )
      drone.owner = user
      drone.save
    end
end
