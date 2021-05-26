# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts ('Starting seed...')
categories = ["chinese", "italian", "japanese", "french", "belgian"]
i = 0
5.times do
	restaurant = Restaurant.new
	restaurant.name = "Restaurant #{i}"
	restaurant.address = "Address #{i}"
	restaurant.phone_number = "(11)99323-111#{i}"
	restaurant.category = categories.sample
	restaurant.save
	i += 1
end
puts ('Done seeding!')