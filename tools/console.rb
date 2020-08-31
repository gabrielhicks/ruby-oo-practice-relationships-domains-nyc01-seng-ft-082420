require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# gabriel = Guest.new("Gabriel", 26)
# jake = Guest.new("Jake", 23)
# jess = Guest.new("Jess", 24)
# seyi = Guest.new("Seyi", 25)
# caryn = Guest.new("Caryn", 20)
# sean = Guest.new("Sean", 16)
# sean1 = Guest.new("Sean", 19)
# jim = Guest.new("Jim", 45)
# sf = Listing.new("San Francisco")
# sc = Listing.new("Santa Cruz")
# nyc = Listing.new("New York City")
# dm = Listing.new("Des Moines")
# bos = Listing.new("Boston")
# nw = Listing.new("Newark")
# bridge = Trip.new(sf, jake)
# bridge1 = Trip.new(sf, jess)
# wharf = Trip.new(sc, seyi)
# wharf1 = Trip.new(sc, caryn)
# new_home = Trip.new(nyc, gabriel)
# home = Trip.new(dm, gabriel)
# turnpike = Trip.new(nw, sean)
# turnpike1 = Trip.new(nw, jake)
# turnpike2 = Trip.new(nw, jess)
# turnpike3 = Trip.new(nw, jim)
# paul_revere = Trip.new(bos,jake)
# corn_pool1 = Trip.new(dm, jake)
# corn_pool2 = Trip.new(dm, jim)

# jakes = Bakery.new("Jakes Bake")
# #sugar, choc, chips
# jess = Bakery.new("Jess' Mess")
# #sugar, chocolate, flower
# gabes = Bakery.new("Gabes Goblet")
# #sugar

# pudding = Dessert.new("pudding", jakes)
# cake = Dessert.new("cake", jess)
# pie = Dessert.new("pie", gabes)
# icecream = Dessert.new("ice cream", jakes)
# pizza = Dessert.new("pizza pie", gabes)

# sugar = Ingredient.new("sugar", 250)
# chocolate = Ingredient.new("chocolate", 600)
# flour = Ingredient.new("flour", 120)
# chips = Ingredient.new("chocolate chips", 300)

# DessertIngredient.new(pudding, sugar)
# DessertIngredient.new(cake, sugar)
# DessertIngredient.new(pie, sugar)
# DessertIngredient.new(pudding, chocolate)
# DessertIngredient.new(cake, chocolate)
# DessertIngredient.new(cake, flour)
# DessertIngredient.new(pudding, chips)

# seyi = Trainer.new("Seyi")
# caryn = Trainer.new("Caryn")
# sean = Trainer.new("Sean")
# emily = Trainer.new("Emily")

# dsm = Location.new("Des Moines")
# nyc = Location.new("NYC")
# chi = Location.new("Chicago")
# nw = Location.new("Newark")
# bos = Location.new("Boston")
# sc = Location.new("Santa Cruz")

# chris = Client.new("Chris", emily)
# alex = Client.new("Alex", emily)
# gabe = Client.new("Gabriel", emily)
# jess = Client.new("Jessica", caryn)
# jake = Client.new("Jacob", sean)
# ron = Client.new("Ron", seyi) #will use method to assign

# TrainerLocation.new(seyi, dsm)
# TrainerLocation.new(caryn, dsm)
# TrainerLocation.new(sean, dsm)
# TrainerLocation.new(emily, nyc)
# TrainerLocation.new(caryn, nyc)
# TrainerLocation.new(sean, chi)
# TrainerLocation.new(seyi, nw)
# TrainerLocation.new(emily, bos)
# TrainerLocation.new(sean, bos)
# TrainerLocation.new(sean, sc)

gabriel = User.new("Gabriel")
jake = User.new("Jake")
jess = User.new("Jess")
seyi = User.new("Seyi")
caryn = User.new("Caryn")

# caryn.create_project(watch, 5000)
# caryn.create_project(phone, 1000)
# jess.create_project(shoe, 15000)
# jake.create_project(water, 6000)
# gabriel.create_project(pen, 8000)
watch = Project.new("A cool watch", 5000)
phone = Project.new("A big phone", 1000)
shoe = Project.new("An shoe", 15000)
water = Project.new("Water", 6000)
pen = Project.new("Fountain Pen", 8000)
ring = Project.new("Ring", 10000)

gabriel.back_project(watch, 2000)
jake.back_project(phone, 5000)
caryn.back_project(shoe, 8000)
jake.back_project(water, 5000)
jess.back_project(pen, 7500)
jake.back_project(watch, 5000)
seyi.back_project(shoe, 10000)

Pry.start