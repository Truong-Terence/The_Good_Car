Booking.destroy_all
Car.destroy_all
User.destroy_all

puts 'Creating seeds [...]'

puts 'Creating users ...'

tintin = User.create(email: "tintin@milou.fr", password: "secret")
haddock = User.create(email: "rhum@bottle.fr", password: "secret")
tournesol = User.create(email: "proftournesol@gmail.com", password: "secret")
dupont = User.create(email: "dupont@gmail.com", password: "secret")

puts 'Creating cars ...'
clio_1 = Car.create(user: tintin,       brand: "Renault",      model: "Clio 1",    address: "Boulevard de la Prairie au Duc, 44200 Nantes",              price_per_day: 5,  year_of_production: 2001)
clio_2 = Car.create(user: tintin,       brand: "Renault",      model: "Clio 2",    address: "Boulevard de la Prairie au Duc, 44200 Nantes",              price_per_day: 8,  year_of_production: 2003)
class_a = Car.create(user: haddock,     brand: "Mercedes",     model: "Classe A",  address: "Route de Vannes, 44700 Orvault",                            price_per_day: 12, year_of_production: 2005)
class_b = Car.create(user: haddock,     brand: "Mercedes",     model: "Classe B",  address: "Route de Vannes, 44700 Orvault",                            price_per_day: 13, year_of_production: 2010)
speedster = Car.create(user: tournesol, brand: "Aston Martin", model: "Speedster", address: "Rue Olympe de Gouges, 44800 Saint Herblain",                price_per_day: 60, year_of_production: 2015)
zoe = Car.create(user: dupont,          brand: "Renault",      model: "Zoé",       address: "Route de Vannes, 44800 Orvault",                            price_per_day: 10, year_of_production: 2016)

puts 'Creating bookings ...'

puts 'Seeds created !'
