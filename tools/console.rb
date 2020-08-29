require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

gabriel = Guest.new("Gabriel", 26)
jake = Guest.new("Jake", 23)
jess = Guest.new("Jess", 24)
seyi = Guest.new("Seyi", 25)
caryn = Guest.new("Caryn", 20)
sean = Guest.new("Sean", 16)
sean1 = Guest.new("Sean", 19)
jim = Guest.new("Jim", 45)
sf = Listing.new("San Francisco")
sc = Listing.new("Santa Cruz")
nyc = Listing.new("New York City")
dm = Listing.new("Des Moines")
bos = Listing.new("Boston")
nw = Listing.new("Newark")
bridge = Trip.new(sf, jake)
bridge1 = Trip.new(sf, jess)
wharf = Trip.new(sc, seyi)
wharf1 = Trip.new(sc, caryn)
new_home = Trip.new(nyc, gabriel)
home = Trip.new(dm, gabriel)
turnpike = Trip.new(nw, sean)
turnpike1 = Trip.new(nw, jake)
turnpike2 = Trip.new(nw, jess)
turnpike3 = Trip.new(nw, jim)
paul_revere = Trip.new(bos,jake)
corn_pool1 = Trip.new(dm, jake)
corn_pool2 = Trip.new(dm, jim)
Pry.start