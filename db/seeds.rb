# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Remove anything that's already there
# Coaster.delete_all
# Park.delete_all
# User.delete_all

# might no longer be able to use because of password_hash and password_salt
u1 = User.create(user_name: "Beryl", email: "beryl.schragger@gmail.com", password: "asdfasdf", password_confirmation: "asdfasdf")
u2 = User.create(user_name: "Oren", email: "oren.schragger@gmail.com", password: "asdfasdf", password_confirmation: "asdfasdf")
u3 = User.create(user_name: "Nancy", email: "nancy.schragger@gmail.com", password: "asdfasdf", password_confirmation: "asdfasdf")
u4 = User.create(user_name: "Paul", email: "paul.schragger@gmail.com", password: "asdfasdf", password_confirmation: "asdfasdf")

p1 = Park.create(name: "Cedar Point", city: "Sandusky", state: "OH")
p2 = Park.create(name: "Dorney Park", city: "Allentown", state: "PA")
p3 = Park.create(name: "Busch Gardens Tampa", city: "Tampa", state: "FL")
p4 = Park.create(name: "Busch Gardens Williamsburg", city: "Williamsburg", state: "VA")
p5 = Park.create(name: "Six Flags Great Adventure", city: "Jackson", state: "NJ")
p6 = Park.create(name: "Six Flags America", city: "Upper Marlboro", state: "MD")
p7 = Park.create(name: "Kings Dominion", city: "Doswell", state: "VA")
p8 = Park.create(name: "California's Great America", city: "Santa Clara", state: "CA")
p9 = Park.create(name: "Disneyland", city: "Anaheim", state: "CA")
p10 = Park.create(name: "Walt Disney World", city: "Lake Buena Vista", state: "FL")
p11 = Park.create(name: "Universal Studios", city: "Orlando", state: "FL")
p12 = Park.create(name: "Hersheypark", city: "Hershey", state: "PA")
p13 = Park.create(name: "Knott's Berry Farm", city: "Buena Park", state: "CA")
p14 = Park.create(name: "SeaWorld Orlando", city: "Orlando", state: "FL")


c1 = Coaster.create(name: "Raptor", park_id: 1, material: "Steel")
c2 = Coaster.create(name: "Mantis", park_id: 1, material: "Steel")
c3 = Coaster.create(name: "Mean Streak", park_id: 1, material: "Wood")
c4 = Coaster.create(name: "Corkscrew", park_id: 1, material: "Steel")
c5 = Coaster.create(name: "Gemini", park_id: 1, material: "Steel")
c6 = Coaster.create(name: "Magnum XL 200", park_id: 1, material: "Steel")
c7 = Coaster.create(name: "Blue Streak", park_id: 1, material: "Wood")
c8 = Coaster.create(name: "Iron Dragon", park_id: 1, material: "Steel")
c9 = Coaster.create(name: "Disaster Transport", park_id: 1, material: "Steel")
c10 = Coaster.create(name: "Wildcat", park_id: 1, material: "Steel")

c11 = Coaster.create(name: "Thunderhawk", park_id: 2, material: "Wood")
c12 = Coaster.create(name: "Laser", park_id: 2, material: "Steel")
c13 = Coaster.create(name: "Hercules", park_id: 2, material: "Wood")
c14 = Coaster.create(name: "Hydra the Revenge", park_id: 2, material: "Steel")
c15 = Coaster.create(name: "Talon", park_id: 2, material: "Steel")
c16 = Coaster.create(name: "Steel Force", park_id: 2, material: "Steel")
c17 = Coaster.create(name: "Gwazi", park_id: 3, material: "Wood")
c18 = Coaster.create(name: "Sheikra", park_id: 3, material: "Steel")
c19 = Coaster.create(name: "Montu", park_id: 3, material: "Steel")
c20 = Coaster.create(name: "Kumba", park_id: 3, material: "Steel")

c21 = Coaster.create(name: "Scorpion", park_id: 3, material: "Steel")
c22 = Coaster.create(name: "Python", park_id: 3, material: "Steel")
c23 = Coaster.create(name: "Alpengeist", park_id: 4, material: "Steel")
c24 = Coaster.create(name: "Apollo's Chariot", park_id: 4, material: "Steel")
c25 = Coaster.create(name: "Loch Ness Monster", park_id: 4, material: "Steel")
c26 = Coaster.create(name: "Big Bad Wolf", park_id: 4, material: "Steel")
c27 = Coaster.create(name: "Drachen Fire", park_id: 4, material: "Steel")
c28 = Coaster.create(name: "Batman the Ride", park_id: 5, material: "Steel")
c29 = Coaster.create(name: "Bizarro", park_id: 5, material: "Steel")
c30 = Coaster.create(name: "Rolling Thunder", park_id: 5, material: "Wood")

c31 = Coaster.create(name: "Great American Scream Machine", park_id: 5, material: "Steel")
c32 = Coaster.create(name: "Batwing", park_id: 6, material: "Steel")
c33 = Coaster.create(name: "Python", park_id: 6, material: "Steel")
c34 = Coaster.create(name: "Joker's Jinx", park_id: 6, material: "Steel")
c35 = Coaster.create(name: "Mind Eraser", park_id: 6, material: "Steel")
c36 = Coaster.create(name: "Roar", park_id: 6, material: "Wood")
c37 = Coaster.create(name: "Superman - Ride of Steel", park_id: 6, material: "Steel")
c38 = Coaster.create(name: "Wild One", park_id: 6, material: "Wood")
c39 = Coaster.create(name: "Anaconda", park_id: 7, material: "Steel")
c40 = Coaster.create(name: "Avalanche", park_id: 7, material: "Steel")

c41 = Coaster.create(name: "Flight of Fear", park_id: 7, material: "Steel")
c42 = Coaster.create(name: "Grizzly", park_id: 7, material: "Wood")
c43 = Coaster.create(name: "Hurler", park_id: 7, material: "Wood")
c44 = Coaster.create(name: "Rebel Yell", park_id: 7, material: "Wood")
c45 = Coaster.create(name: "Shockwave", park_id: 7, material: "Steel")
c46 = Coaster.create(name: "Volcano, The Blast Coaster", park_id: 7, material: "Steel")
c47 = Coaster.create(name: "HyperSonic XLC", park_id: 7, material: "Steel")
c48 = Coaster.create(name: "Demon", park_id: 8, material: "Steel")
c49 = Coaster.create(name: "Flight Deck", park_id: 8, material: "Steel")
c50 = Coaster.create(name: "Grizzly", park_id: 8, material: "Wood")

c51 = Coaster.create(name: "Vortex", park_id: 8, material: "Steel")
c52 = Coaster.create(name: "Greased Lightnin'", park_id: 8, material: "Steel")
c53 = Coaster.create(name: "Invertigo", park_id: 8, material: "Steel")
c54 = Coaster.create(name: "Stealth", park_id: 8, material: "Steel")
c55 = Coaster.create(name: "Big Thunder Mountain Railroad", park_id: 9, material: "Steel")
c56 = Coaster.create(name: "Matterhorn Bobsleds", park_id: 9, material: "Steel")
c57 = Coaster.create(name: "Space Mountain", park_id: 9, material: "Steel")
c58 = Coaster.create(name: "Rock 'n' Roller Coaster", park_id: 10, material: "Steel")
c59 = Coaster.create(name: "Big Thunder Mountain Railroad", park_id: 10, material: "Steel")
c60 = Coaster.create(name: "Space Mountain", park_id: 10, material: "Steel")

c61 = Coaster.create(name: "Dragon Challenge", park_id: 11, material: "Steel")
c62 = Coaster.create(name: "Incredible Hulk", park_id: 11, material: "Steel")
c63 = Coaster.create(name: "Comet", park_id: 12, material: "Wood")
c64 = Coaster.create(name: "Great Bear", park_id: 12, material: "Steel")
c65 = Coaster.create(name: "Lightning Racer", park_id: 12, material: "Wood")
c66 = Coaster.create(name: "Sidewinder", park_id: 12, material: "Steel")
c67 = Coaster.create(name: "Sooperdooperlooper", park_id: 12, material: "Steel")
c68 = Coaster.create(name: "Storm Runner", park_id: 12, material: "Steel")
c69 = Coaster.create(name: "Trailblazer", park_id: 12, material: "Steel")
c70 = Coaster.create(name: "Wildcat", park_id: 12, material: "Wood")

c71 = Coaster.create(name: "Boomerang", park_id: 13, material: "Steel")
c72 = Coaster.create(name: "GhostRider", park_id: 13, material: "Wood")
c73 = Coaster.create(name: "Jaguar", park_id: 13, material: "Steel")
c74 = Coaster.create(name: "Montezooma's Revenge", park_id: 13, material: "Steel")
c75 = Coaster.create(name: "Journey to Atlantis", park_id: 14, material: "Steel")
c76 = Coaster.create(name: "Kraken", park_id: 14, material: "Steel")


u1.coasters = Coaster.all
User.all.each do |user|
  user.coasters << c1 << c2 << c14 << c15 << c19 << c20 << c23 << c29 << c32 << c34 << c37
end
u2.coasters << c39 << c46 << c47 << c54 << c56 << c58 << c59 << c60 << c61 << c62 << c64 << c65 << c68 << c74 << c75 << c76

puts "All done"