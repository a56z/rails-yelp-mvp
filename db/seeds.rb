# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
# restaurants = Restaurant.create([{ name: 'Yono' }, { address: 'Berlin' }, { phone_number: '123456789' }, { category: "chinese"} ])

# restaurants = Restaurant.create([{ name: 'Molo' }, { address: 'Wien' }, { phone_number: '11111111' }, { category: "chinese"} ])

# restaurants = Restaurant.create([{ name: 'Yolz' }, { address: 'Stuttgart' }, { phone_number: '2222222' }, { category: "chinese"} ])

# restaurants = Restaurant.create([{ name: 'Zola' }, { address: 'Paris' }, { phone_number: '333333' }, { category: "chinese"} ])

# restaurants = Restaurant.create([{ name: 'Fola' }, { address: 'London' }, { phone_number: '44444' }, { category: "chinese"} ])


puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    category:        "chinese",
    phone_number:   "111111"
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:        "chinese",
    phone_number:   "23232"
  }
]
Restaurant.create!(restaurants_attributes)
puts "Finished! #{Restaurant.all.count}"