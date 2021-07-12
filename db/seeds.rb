# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Recipe.create([
    {name: "Butter Chicken", cuisine_country: "Indian", dietary_type: 1, cook_time: 30, spice_level: 0, rating: 3, serving_size: 0, skill_level: 0, starred: 1}, 
    {name: "Omlette", cuisine_country: "French", dietary_type: 0, cook_time: 15, spice_level: 2, rating: 1, serving_size: 1, skill_level: 1, starred: 1}, 
    {name: "Carnitas", cuisine_country: "Mexican", dietary_type: 1, cook_time: 30, spice_level: 1, rating: 2, serving_size: 2, skill_level: 2, starred: 0} 
])
