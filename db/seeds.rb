# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name: 'Comedia del Arte',
    address: '8 Rue des Batignolles 75017 Paris France',
    category: 'italian'
  },
  {
    name: 'Samouraï Tavern',
    address: '34 Rue Titon 75011 Paris France',
    category: 'japanese'
  },
  {
    name: 'Baguette et Pinot',
    address: '118 Rue Amelot 75011 Paris France',
    category: 'french'
  },
  {
    name: 'Les frites du plat pays',
    address: '75 Rue Legendre 75017 Paris France',
    category: 'belgian'
  },
  {
    name: 'Le Soleil Levant',
    address: '119, avenue de Villiers 75017 Paris France',
    category: 'chinese'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
