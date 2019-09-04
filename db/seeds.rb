# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "Cleaning the DB"
Room.destroy_all
Review.destroy_all
Score.destroy_all
Offer.destroy_all
Interest.destroy_all
Sport.destroy_all
Club.destroy_all
User.destroy_all


users = []
admins = []
sports = []
sum = 0
# sport_names = %w(Archery Badminton Basketball Boxing Climbing Cycling Dodgeball Fencing Field-Hockey Football Golf Handball Horse-Riding Korfball Krav-Maga Kung-Fu Quidditch Rowing Rugby Running Sailing Squash Surfing Swimming Table-Tennis Tennis Ultimate-Frisbee Volleyball Water-Polo Wrestling Yoga)
sport_names = ["Archery", "Badminton", "Basketball", "Boxing", "Climbing", "Cycling", "Dodgeball", "Fencing", "Field Hockey", "Football", "Golf", "Handball", "Horse Riding", "Korfball", "Krav Maga", "Kung Fu", "Quidditch", "Rowing", "Rugby", "Running", "Sailing", "Squash", "Surfing", "Swimming", "Table Tennis", "Tennis", "Ultimate Frisbee", "Volleyball", "Water Polo", "Wrestling", "Yoga"]


# Create Testuser who is a club admin

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    photo: "https://api.adorable.io/avatars/285/abott@adorable.png",
    description: "Join our club to have great fun"
  )
  club.remote_photo_url = "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png"

  admin = User.create(
    email: 'test@admin.com',
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  p admin
end

# Create Testuser who is normal user

us = User.create(
    email: 'test@user.com',
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "I am looking for a cool sports club",
    remote_photo_url: "https://joeschmoe.io/api/v1/random"
)
users << us

# Create 40 ordinary users

20.times do
  user = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "I am looking for a cool sports club",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )
  users << user
  p user
end

#Create 40 admins and clubs

# 1

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    photo: "https://api.adorable.io/avatars/285/abott@adorable.png",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 2

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 3

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 4

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 5

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 6

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 7

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 8

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 9

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 10

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 11

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 12

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 13

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 14

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 15

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 16

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 17

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 18

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 19

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 20

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 21

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 22

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 23

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 24

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 25

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 26

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 27

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 28

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 29

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end


# 30

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 31

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 32

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 33

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 34

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 35

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 36

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 37

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

# 38

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

#39

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end

#40

1.times do
  club = Club.create!(
    name: Faker::Sports::Football.team,
    address: Faker::Address.full_address,
    description: "Join our club to have great fun",
    remote_photo_url: "https://pigment.github.io/fake-logos/logos/medium/color/#{rand(1..13)}.png",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )

  club.update_attributes admin_id: admin.id
  admins << admin
  p club
  p admin
end



# Create sports

31.times do
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
  club.sports.push Sport.all[0..10].sample
  club.sports.push Sport.all[11..20].sample
  club.sports.push Sport.all[21..30].sample
end

# Add three random sports to user

User.all.each do |user|
  user.sports.push Sport.all[0..10].sample
  user.sports.push Sport.all[11..20].sample
  user.sports.push Sport.all[21..30].sample
end

puts "Finished creating #{users.count + 1} users"
puts "Finished creating #{admins.count + 1} admins"
puts "Finished creating #{sports.count + 1} sports"
