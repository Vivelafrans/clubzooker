# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "Cleaning the DB"
Offer.destroy_all
Interest.destroy_all
Sport.destroy_all
Club.destroy_all
User.destroy_all


users = []
admins = []
sports = []
sum = 0
sport_names = %w(Archery, Badminton, Cricket, Boxing, Tennis, Surfing, Hockey, Yoga, Fencing, Fitness, Gymnastics, Karate, Volleyball, Basketball, Baseball, Rugby, Wrestling, Running, Table tennis, Judo, Climbing, Golf, Football)

# Create Testuser who is a club admin

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    photo: "https://joeschmoe.io/api/v1/random",
  )

  admin = User.create(
    email: 'test@admin.com',
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    photo: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  p admin
end

# Create Testuser who is normal user

users << User.create(
    email: 'test@user.com',
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "I am looking for a cool sports club",
    photo: "https://joeschmoe.io/api/v1/random",
)

# Create 200 ordinary users

20.times do
  user = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "I am looking for a cool sports club",
    photo: "https://joeschmoe.io/api/v1/random",
  )
  users << user
  p user
end

#Create 50 admins and clubs

5.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    photo: "https://joeschmoe.io/api/v1/random",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    photo: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  # admins << admin
  p club
  p admin
end

# Create sports

24.times do
  sport = Sport.create(
    name: "#{sport_names[sum]}",
    teamsport: true,
    equipment: true,
    intensity: "medium",
  )
  sports << sport
  sum += 1
  p sport
end

# Add three random sports to club

Club.all.each do |club|
  club.sports.push Sport.all[0..8].sample
  club.sports.push Sport.all[9..17].sample
  club.sports.push Sport.all[18..24].sample
end

# Add three random sports to user

User.all.each do |user|
  user.sports.push Sport.all[0..8].sample
  user.sports.push Sport.all[9..17].sample
  user.sports.push Sport.all[18..24].sample
end

puts "Finished creating #{users.count} users"
puts "Finished creating #{admins.count} admins"
puts "Finished creating #{sports.count} sports"
