Recipe Application Notepad

Rails (backend)
[X] Map out the table of Recipes attributes namespace and datatypes
[X] Run rails g scaffold --no-test-framework 
[X] Recipe.create(name: "")
[X] Seed in data into seeds.rb
#1 Recipe.create(name: "Butter Chicken" )
Rails Database commands
[X] rails g scaffold recipes name cuisine_country dietary_type time_to_cook:integer spice_level rating:integer serving_size:integer skill_level --no-test-framework
[ ] Model validations, maybe?


#2 Recipe.create(name: "Omlette" )
#3 Recipe.create(name: "Egg Drop Soup" )
#4 Recipe.create(name: "Carnitas" )

React & Redux
[X] write ES6 as much as possbile
[X] Run npm create-react-app in the frontend 
[X] Store, Actions, Reducers
[] 2 container components
[X] 5 stateless components
[X] 3 routes
[X] react-router is being used with proper RESTful routing
[X] add Redux and redux-thunk middleware to modify state change and make use of async actions to send data and receive data from the server
[X] use Rails API backend to persit data for the app
[X] react/redux state flow
[X] state and props in React
[X] async JS with Promises
[X] Install these packages: 
    gem 'active_model_serializers' 
    rails g serializer recipe


**Recipes** 
```
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
```

Potential 2nd table/model 
steps --list of string [X]
ingredients [X]


