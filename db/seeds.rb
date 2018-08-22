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

price = [49, 59, 69, 79, 89, 99, 109, 119, 129, 129, 139, 149, 159, 169]


drones = [
  "1" => { name: "Hubsan H", brand: "Gwendoll", autonomy: "14 minutes", price: price.sample, video: "1080P" },
  "2" => { name: "Runner 250", brand: "Walkera", autonomy: "21 minutes", price: price.sample, video: "720P" },
  "3" => { name: "FairytaleMM", brand: "Walkera", autonomy: "29 minutes", price: price.sample, video: "4K" },
  "4" => { name: "XciteRC", brand: "FPV Racing", autonomy: "10 minutes", price: price.sample, video: "1280P" },
  "5" => { name: "Phantom 3", brand: "DJI", autonomy: "10 minutes", price: price.sample, video: "1280P" },
  "6" => { name: "Phantom 4", brand: "DJI", autonomy: "30 minutes", price: price.sample, video: "4K" }
]

# 1. https://www.amazon.fr/Gwendoll-Brushless-Altitude-Automatique-Quadcopter/dp/B07FM8XTH2/ref=sr_1_47?ie=UTF8&qid=1534932939&sr=8-47&keywords=drone+video
# 2. https://www.amazon.fr/Walkera-15004650-quadrirotor-V4-Lunettes-T%C3%A9l%C3%A9commande/dp/B01N6HIY7O/ref=sr_1_27?ie=UTF8&qid=1534932918&sr=8-27&keywords=drone+video
# 3. https://www.amazon.fr/FairytaleMM-Walkera-Pliant-Quadcopter-Noir-Gris/dp/B07GLQGW6W/ref=sr_1_24?ie=UTF8&qid=1534932903&sr=8-24&keywords=drone+video
# 4. https://www.amazon.fr/DJI-Phantom-Standard-Quadricopt%C3%A8re-Cam%C3%A9ra/dp/B013J39S0M/ref=sr_1_18?ie=UTF8&qid=1534931333&sr=8-18&keywords=drone+video
# 5. https://www.amazon.fr/DJI-Phantom-V2-0-Version-Quadricopt%C3%A8re/dp/B07CZDL7PM/ref=sr_1_2?ie=UTF8&qid=1534931368&sr=8-2&keywords=drone+video
# 6. https://www.amazon.fr/XciteRC-15003850-quadrirotor-Lunettes-10-T%C3%A9l%C3%A9commande/dp/B01BGZHHG2/ref=sr_1_6?ie=UTF8&qid=1534931368&sr=8-6&keywords=drone+video

users.each do |user|

  mail = "#{user.downcase}@dronair.io"

  user = User.create(email: mail, user_name: user.capitalize, password: "Dronair2K18")
    rand(1..3).times do |y|
      drone = Drone.new(drones[0]["#{rand(1..6)}"])
      drone.owner = user
      drone.save
    end
end
