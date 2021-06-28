# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Recipe.create([
    {name: "Butter Chicken", cuisine_country: "Indian", dietary_type: "low carb", cook_time: 30, spice_level: "spicy", rating: 3, serving_size: 1, skill_level: "easy"}, 
    {name: "Omlette", cuisine_country: "French", dietary_type: "keto", cook_time: 15, spice_level: "mild", rating: 1, serving_size: 1, skill_level: "difficult"}, 
    {name: "Carnitas", cuisine_country: "Mexican", dietary_type: "low carb", cook_time: 30, spice_level: "none", rating: 2, serving_size: 1, skill_level: "easy"} 
])

# INSERT INTO "recipes" VALUES (1,'Butter Chicken','Indian','low carb',' 30 mins','mild',3,2,'easy','2021-06-12 05:56:32.179862','2021-06-12 05:56:32.179862');
# INSERT INTO "recipes" VALUES (2,'Omlette','French','low carb','25 mins','none',3,1,'easy','','');
# INSERT INTO "recipes" VALUES (3,'Egg Drop Soup','Chinese','keto','10 mins','none',2,3,'medium','','');
# INSERT INTO "recipes" VALUES (4,'Carnitas','Mexican','keto','745 mins','mild',3,10,'medium','','');