# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# City.destroy_all
# Dog.destroy_all
# Dogsitter.destroy_all
# Stroll.destroy_all
# JoinTableStrollDog.destroy_all

puts "create city"
10.times do |index|
  City.create(
    city_name: Faker::Address.city
  )
  puts index
end

puts "create dog"
10.times do |index|
  Dog.create(
    name: Faker::Name.first_name,
    city: City.all.sample
  )
  puts index
end

puts "create dogsitter"
10.times do |index|
  Dogsitter.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city: City.all.sample
  )
  puts index
end


puts "create stroll"
10.times do |index|
    puts index
  Stroll.create(
    date: Time.at(rand * Time.now.to_i),
    dogsitter: Dogsitter.all.sample,
    city: City.all.sample
  )
end

puts "create JoinTableStrollDog"
10.times do |index|
    puts index
  JoinTableStrollDog.create(
    dog: Dog.all.sample,
    stroll: Stroll.all.sample
  )
end
