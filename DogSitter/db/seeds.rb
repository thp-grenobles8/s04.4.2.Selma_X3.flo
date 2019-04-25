# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

print "clear City:"
City.destroy_all
puts " ✔"
print "clear Dog:"
Dog.destroy_all
puts " ✔"
print "clear Dogsitter:"
Dogsitter.destroy_all
puts " ✔"
print "clear Stroll:"
Stroll.destroy_all
puts " ✔"
print "clear JoinTableStrollDog:"
JoinTableStrollDog.destroy_all
puts " ✔\n\n"

print "create city"
10.times do |index|
  City.create(
    city_name: Faker::Address.city
  )
end
puts " ✔"

print "create dog"
10.times do |index|
  Dog.create(
    name: Faker::Name.first_name,
    city: City.all.sample
  )
end
puts " ✔"

print "create dogsitter"
10.times do |index|
  Dogsitter.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city: City.all.sample
  )
end
puts " ✔"


print "create stroll"
10.times do |index|
  Stroll.create(
    date: Time.at(rand * Time.now.to_i),
    dogsitter: Dogsitter.all.sample,
    city: City.all.sample
  )
end
puts " ✔"

print "create JoinTableStrollDog"
10.times do |index|
  JoinTableStrollDog.create(
    dog: Dog.all.sample,
    stroll: Stroll.all.sample
  )
end
puts " ✔"
