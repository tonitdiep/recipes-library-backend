[ ] Map out the table of Recipes attributes namespace and datatypes
[ ] Run rails g scaffold --no-test-framework 
[ ] Seed in data into seeds.rb
[ ] Run npm create app in the frontend 
[ ] Build 
Recipes 

cuisines = [
    "pasta", 
    "meat", 
    "fish"
]

skills = [
    "easy", 
    "med", 
    "hard"
]

recipes table:
name - str, "My wonderful recipe"
cuisine - [ pasta, meat, fish, ...] [X]
cuisine_country - [ Indian, British,...]
dietary_type - [low-carb, keto, ...]
time_to_cook - .5 hrs integer minutes
spice_level - mild, spicy, way hot 
rating - [1,2,3]
setving_size -- 1, 2 integers
skill level - easy, medium, hard

Potential 2nd table/model
steps --list of string [X]
ingredients [X]

rails g scaffold recipes name cuisine_country dietary_type time_to_cook:integer spice_level rating:integer serving_size:integer skill_level --no-test-framework

