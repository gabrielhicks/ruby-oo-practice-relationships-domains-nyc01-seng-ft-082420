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

seyi = Trainer.new("Seyi")
caryn = Trainer.new("Caryn")
sean = Trainer.new("Sean")
emily = Trainer.new("Emily")

dsm = Location.new("Des Moines")
nyc = Location.new("NYC")
chi = Location.new("Chicago")
nw = Location.new("Newark")
bos = Location.new("Boston")
sc = Location.new("Santa Cruz")

chris = Client.new("Chris", emily)
alex = Client.new("Alex", emily)
gabe = Client.new("Gabriel", emily)
jess = Client.new("Jessica", caryn)
jake = Client.new("Jacob", sean)
ron = Client.new("Ron", seyi) #will use method to assign

TrainerLocation.new(seyi, dsm)
TrainerLocation.new(caryn, dsm)
TrainerLocation.new(sean, dsm)
TrainerLocation.new(emily, nyc)
TrainerLocation.new(caryn, nyc)
TrainerLocation.new(sean, chi)
TrainerLocation.new(seyi, nw)
TrainerLocation.new(emily, bos)
TrainerLocation.new(sean, bos)
TrainerLocation.new(sean, sc)
Pry.start