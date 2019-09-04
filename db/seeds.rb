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
    name: "Amsterdam Leeuwen",
    address: "Tweede Egelantiersdwarsstraat 9, 1015 SB Amsterdam",
    description: "Join the Amsterdam Lions to meet new people, try new sports and have a great time. We want you!",
    photo: "https://api.adorable.io/avatars/285/abott@adorable.png",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602205/ClubZooker/club.pjg_t9ss6c.png",
  )


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

#Create 40 admins and clubs MAKE

# 1

1.times do
  club = Club.create!(
    name: "Club Wagon",
    address: "Overhoeksplein 2, 1031 KS Amsterdam",
    description: "Join our club and learn to sport. We accept people from all ages and nationalities.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603847/ClubZooker/logo35_h24woz.gif",
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
    name: "Club Excelsior",
    address: "Haarlemmerweg 4, 1013 RW Amsterdam",
    description: "Come join us. Take all your negativity and use it as a fuel to do something fun together.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603846/ClubZooker/logo27_rwwexv.png",
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
    name: "Expat Club",
    address: "Fred. Roeskestraat 115, 1076 EE Amsterdam",
    description: "Join our expat club. Meet new expats from all over the world and play different sports.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603846/ClubZooker/logo26_oqmybe.png",
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
    name: "Quick Boys",
    address: "Piet Heinkade 11A, 1019 BR Amsterdam",
    description: "Be Quick and join the coolest club for guys in Amsterdam.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603846/ClubZooker/logo28_w0mffm.png",
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
sleep(120)

1.times do
  club = Club.create!(
    name: "The Dutch Club",
    address: "Oudezijds Achterburgwal 60h, 1012 DP Amsterdam",
    description: "Amsterdam's oldest sports club. Join the biggest and old club. Dutch speaking only. Hup!",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603846/ClubZooker/logo30_vvnrzg.png",
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
    name: "Surinam Club Amsterdam",
    address: "Metrostation, Waterlooplein 6, 1011 MS Amsterdam",
    description: "The first Surinamese sports club in Amsterdam. We only accept people with passion for Surinamese food.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603848/ClubZooker/logo38_sry67g.png",
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
    name: "Amsterdam Business Club",
    address: "Weteringschans 165 C, 1017 XD Amsterdam",
    description: "The premier sports club for working professionals in Amsterdam. Come here after work to do something healthy.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603847/ClubZooker/logo34_bowsnh.png",
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
    name: "Korean Association",
    address: "Albert Cuypstraat 66-70, 1072 CW Amsterdam",
    description: "We are the first Korean sports club in Amsterdam. Only for Korean speaking members.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602204/ClubZooker/logo3_bioonc.png",
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
    name: "SC Swift",
    address: "Muntplein 1, 1017 CK Amsterdam",
    description: "We are a fast-paced club aiming to have plenty of fun. Come visit us in Muntplein to join our Club.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602206/ClubZooker/logo17_ovjrkp.jpg",
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

sleep(120)
# 10

1.times do
  club = Club.create!(
    name: "Tonegido",
    address: "Utrechtsestraat 37, 1017 VH Amsterdam",
    description: "We welcome people from all parts of the Netherlands. Dutch language skills required.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602206/ClubZooker/logo14_bbpxdj.png",
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
    name: "FC de Koel",
    address: "Hartenstraat 14, 1016 CB Amsterdam",
    description: "We're a club that's all about exploring, capturing new things, and having fun.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603846/ClubZooker/logo31_zz4vpg.jpg",
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
    name: "SC Vriendschap",
    address: "Woubruggestraat 28-hs, 1059 VS Amsterdam",
    description: "We like friendships. We like sports. We like you. Join our club.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567605648/ClubZooker/logo41_ucmtd1.png",
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
    name: "SC Overamstel",
    address: "Piet Heinkade 173, 1019 GM Amsterdam",
    description: "Change your life and join our club. We welcome all genders, nationalities and ages.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603844/ClubZooker/logo18_crzytd.png",
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
    name: "Mercedes-Benz Club",
    address: "Recht Boomssloot 34, 1011 EB Amsterdam",
    description: "Do you drive a Mercedes? Join us, talk about cars and do some sports.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602205/ClubZooker/logo13_k5i0ag.png",
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

sleep(120)
# 15

1.times do
  club = Club.create!(
    name: "Bay Club",
    address: "Kinkerstraat 73A, 1053 DG Amsterdam",
    description: "If you're Dutch and like to do sports, join our club any time. We also have international teams.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602206/ClubZooker/logo15_excqhr.png",
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
    name: "Bondi Icebergs",
    address: "De Passage 100, 1101 AX Amsterdam",
    description: "We might seem icecold but once you join our club, you will notice that we warm each other with our spirit.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602205/ClubZooker/logo7_m1kxwa.png",
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
    name: "Boys Club",
    address: "Paul van Vlissingenstraat 24, 1096 BK Amsterdam",
    description: "Saturdays are for the boys and this club is as well.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602205/ClubZooker/logo8_r2oufq.png",
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
    name: "Amsterdam Bulldogs",
    address: "Van der Pekstraat 79, 1031 CT Amsterdam",
    description: "Join our club to for highly motivated members who want to do intense sport. We are the Bulldogs!",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603844/ClubZooker/logo20_rzcxrt.png",
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
    name: "Amsterdam Bisons",
    address: "Pilotenstraat 41a, 1059 CH Amsterdam",
    description: "Join the Bisons and belong to one of Amsterdam's most prominent sports clubs. On the Bisons",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603847/ClubZooker/logo33_skehoh.jpg",
  )

  admin = User.create(
    email: Faker::Internet.email,
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun.",
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
    name: "Social Club",
    address: "ArenA Boulevard 1, 1100 DL Amsterdam",
    description: "Our club is all about having fun and having a good time with your friends.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602205/ClubZooker/logo5_njhjil.png",
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

sleep(120)
# 21

1.times do
  club = Club.create!(
    name: "Clovely",
    address: "Danzigerkade 8, 1013 AP Amsterdam",
    description: "Come to Danzigerkade to do sports and make new friends. We are waiting for you.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602205/ClubZooker/logo11_mixve9.png",
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
    name: "Amsterdam Dogs",
    address: "Winkelcentrum Kalverpassage, Singel 457, 1012 WP Amsterdam",
    description: "A club for passionate dog owners to do sports together. Dogs are allowed on the club property.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567605648/ClubZooker/logo38_nz9vyv.jpg",
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
    name: "Outdoor Activities Sports Club",
    address: "Riekerweg 15, 1066 BT Amsterdam",
    description: "We're a club that does anything outdoors whenever the weather is good. Come join us!",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602205/ClubZooker/logo4_lg2dsw.jpg",
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
    name: "Office Club",
    address: "Fogostraat 10, 1060 LJ Amsterdam",
    description: "We're the primary club in Amsterdam for working profressionals from around the world. Come join us.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602205/ClubZooker/logo12_akxhir.png",
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
sleep(120)

1.times do
  club = Club.create!(
    name: "Amsterdam Pitbulls",
    address: "Doorweg 32, 1182 DB Amstelveen",
    description: "Come join us for different sport activities. We take sport seriously and compete on the highest level.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567605897/ClubZooker/logo43_paywtc.jpg",
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
    name: "TN 22",
    address: "Naritaweg 48, 1043 BZ Amsterdam",
    description: "TN 22 is Amsterdam's primary club for woman in their 30s. Meet other like minded individuals.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602205/ClubZooker/logo9_eepvxp.jpg",
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
    name: "SCG Classic",
    address: "Uilenstede 73A, 1183 AB Amstelveen",
    description: "Join us, meet new friends from Amsterdam, and play different sports.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602206/ClubZooker/logo10_chqrhy.jpg",
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
    name: "German Club Amsterdam",
    address: "Bijlmerdreef 131-132, 1102 DB Amsterdam",
    description: "We are Amsterdam's most popular club for Germans. We welcome anyone with German skills who wants to do sport.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567606016/ClubZooker/logo44_posbvc.gif",
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
    name: "Greenway Club",
    address: "Pampusweg 20, 1398 PV Muiden",
    description: "We love sport! How about you? Come join us every monday?.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602207/ClubZooker/Greenway_qihi1x.png",
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
sleep(20)

1.times do
  club = Club.create!(
    name: "Tanaina's Club",
    address: "Oranje-Vrijstaatkade 21, 1093 KS Amsterdam",
    description: "Tanaina founded this club in 1987. Since then we welcomed more than 1000 members looking to do fun sports.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602206/ClubZooker/logo16_eaq8ku.png",
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
    name: "Club Française Amsterdam",
    address: "Oude Haagseweg 200, 1171 PE Badhoevedorp",
    description: "Our sports club strives do to improve your fitness, health and happiness. Come join us!",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603844/ClubZooker/logo22_ux0mze.png",
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
    name: "Expats Exercise",
    address: "Confuciusplein 14, 1064 LG Amsterdam",
    description: "Welcome expats! Are you new to Amsterdam and want to join a sports club? Come join us and have lots of fun and meet new friends.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603845/ClubZooker/logo21_wg4yyf.png",
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
    name: "Amsterdam Eagles",
    address: "Stadsplein 52, 1181 ZM Amstelveen",
    description: "Join the Eagles and change your life by doing more sport and getting to know new people.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603847/ClubZooker/logo36_ocvue3.jpg",
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
sleep(120)


1.times do
  club = Club.create!(
    name: "Pelican Waters",
    address: "Science Park 410, 1098 XH Amsterdam",
    description: "We are located in the Science Park and love to take in scientists from around the world.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603844/ClubZooker/logo19_swruul.png",
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
    name: "Italian Club",
    address: "Gillis van Ledenberchstraat 135I, 1052 VE Amsterdam",
    description: "Our club has the best club restaurant! But we offer way more than good Pizza & Pasta. Join us to learn more!",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603846/ClubZooker/logo29_llpnpf.jpg",
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
    name: "Havana Club",
    address: "Dapperstraat 2, 1093 BT Amsterdam",
    description: "Come join the club with the Cuban culture. We accept members from all over the world.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603844/ClubZooker/logo23_klrl9j.jpg",
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
    name: "Hot Club",
    address: "Bos en Lommerweg 130, 1055 ED Amsterdam",
    description: "Come to Bos en Lommerweg to check out our club and join us. You will not regret it.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603844/ClubZooker/logo24_mny4xb.png",
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
sleep(120)

1.times do
  club = Club.create!(
    name: "FC De Pijp",
    address: "Werfkade 4, 1033 RA Amsterdam",
    description: "Named after the coolest quarter in Amsterdam, we are also the coolest club. Join us!",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603845/ClubZooker/logo25_cd4hct.png",
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
    name: "Club Zuid",
    address: "Waterlandplein 280, 1024 NB Amsterdam",
    description: "We are currently looking for new Dutch speaking members to join our ranks. Please message us if you're interested.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603847/ClubZooker/logo32_zfbcfw.jpg",
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
    name: "SC Diemen",
    address: "Lijnbaansgracht 173, 1016 VZ Amsterdam",
    description: "If you are looking for a fun time at a great sports club, you should joun SC Diemen.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603848/ClubZooker/logo37_yiisxy.jpg",
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
