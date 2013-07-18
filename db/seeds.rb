# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Remove anything that's already there
Coaster.delete_all
Park.delete_all
User.delete_all

u1 = User.create(name: "Beryl Schragger", user_name: "Beryl", email: "beryl.schragger@gmail.com", password: "blahblah")
u2 = User.create(name: "Oren Schragger", user_name: "Oren", email: "oren.schragger@gmail.com", password: "dootdoot")
u3 = User.create(name: "Nancy Schragger", user_name: "Nancy", email: "nancy.schragger@gmail.com", password: "yeahyeah")
u4 = User.create(name: "Paul Schragger", user_name: "Paul", email: "paul.schragger@gmail.com", password: "blahblah")

p1 = Park.create(name: "Cedar Point", city: "Sandusky", state: "OH")
p2 = Park.create(name: "Dorney Park", city: "Allentown", state: "PA")
p3 = Park.create(name: "Busch Gardens Tampa", city: "Tampa", state: "FL")

c1 = Coaster.create(name: "Raptor", park_id: 1, material: "Steel")
c2 = Coaster.create(name: "Mantis", park_id: 1, material: "Steel")
c3 = Coaster.create(name: "Mean Streak", park_id: 1, material: "Wood")
c4 = Coaster.create(name: "Hydra", park_id: 2, material: "Steel")
c5 = Coaster.create(name: "Talon", park_id: 2, material: "Steel")
c6 = Coaster.create(name: "Steel Force", park_id: 2, material: "Steel")
c7 = Coaster.create(name: "Gwazi", park_id: 3, material: "Wood")
c8 = Coaster.create(name: "Sheikra", park_id: 3, material: "Steel")
c9 = Coaster.create(name: "Montu", park_id: 3, material: "Steel")
c10 = Coaster.create(name: "Kumba", park_id: 3, material: "Steel")

User.all.each do |user|
  user.coasters << c1 << c2 << c3
end

u1.coasters << c4 << c5 << c8 << c9
u2.coasters << c7

puts "All done"