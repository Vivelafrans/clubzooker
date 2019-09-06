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

backgrounds= ["https://res.cloudinary.com/dwuobqwk0/image/upload/v1567761924/photo-1499852771843-6693d72f906f_nhmo8m.jpg",
 "https://res.cloudinary.com/dwuobqwk0/image/upload/v1567761924/photo-1489976908522-aabacf277f49_sdoksn.jpg",
  "https://res.cloudinary.com/dwuobqwk0/image/upload/v1567761939/photo-1556817411-31ae72fa3ea0_madt99.jpg",
   "https://res.cloudinary.com/dwuobqwk0/image/upload/v1567761939/photo-1559504706-3681828d848b_pocmxv.jpg",
    "https://res.cloudinary.com/dwuobqwk0/image/upload/v1567761939/photo-1475955987304-4dc89c617ee9_qobib8.jpg",
     "https://res.cloudinary.com/dwuobqwk0/image/upload/v1567761940/photo-1484452330304-377cdeb05340_piwqpx.jpg",
      "https://res.cloudinary.com/dwuobqwk0/image/upload/v1567761939/photo-1457470572216-1240fac24b37_p1wz1w.jpg",
       "https://res.cloudinary.com/dwuobqwk0/image/upload/v1567761940/photo-1478112544096-20cf77df3a88_svdtsr.jpg",
        "https://res.cloudinary.com/dwuobqwk0/image/upload/v1567761939/photo-1431324155629-1a6deb1dec8d_bcwyu7.jpg",
         "https://res.cloudinary.com/dwuobqwk0/image/upload/v1567761940/photo-1484482340112-e1e2682b4856_ol73ua.jpg",
          "https://res.cloudinary.com/dwuobqwk0/image/upload/v1567761949/photo-1556746834-1cb5b8fabd54_dygbgz.jpg",
           "https://res.cloudinary.com/dwuobqwk0/image/upload/v1567761949/photo-1552674605-db6ffd4facb5_ireehv.jpg",
            "https://res.cloudinary.com/dwuobqwk0/image/upload/v1567761949/photo-1473976345543-9ffc928e648d_l9cvxg.jpg",
             "https://res.cloudinary.com/dwuobqwk0/image/upload/v1567761949/photo-1542766788-a2f588f447ee_njeb9g.jpg",
              "https://res.cloudinary.com/dwuobqwk0/image/upload/v1567761952/photo-1489944440615-453fc2b6a9a9_yp5m76.jpg"]

# Create 20 ordinary users

cg = 1
5.times do
  user = User.create(
    email: "hello#{cg}@frans.com",
    password: '123456789',
    name: Faker::Name.name,
    age: (18..99).to_a.sample,
    address: Faker::Address.full_address,
    description: "I am looking for a cool sports club",
    remote_photo_url: "https://joeschmoe.io/api/v1/random",
  )
  users << user
  p user
  cg += 1
end

#Create 40 admins and clubs MAKE

# 1

1.times do
  club = Club.create!(
    name: "Club Wagon",
    address: "Overhoeksplein 2, Amsterdam",
    description: "Join our club and learn to sport. We accept people from all ages and nationalities.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603847/ClubZooker/logo35_h24woz.gif",
    remote_background_url: backgrounds.sample,
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
    address: "Haarlemmerweg 4, Amsterdam",
    description: "Come join us. Take all your negativity and use it as a fuel to do something fun together.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603846/ClubZooker/logo27_rwwexv.png",
    remote_background_url: backgrounds.sample,
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
    address: "Fred. Roeskestraat 115, Amsterdam",
    description: "Join our expat club. Meet new expats from all over the world and play different sports.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603846/ClubZooker/logo26_oqmybe.png",
    remote_background_url: backgrounds.sample,
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
    address: "Piet Heinkade 11A, Amsterdam",
    description: "Be Quick and join the coolest club for guys in Amsterdam.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603846/ClubZooker/logo28_w0mffm.png",
    remote_background_url: backgrounds.sample,
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
    name: "The Dutch Club",
    address: "Oudezijds Achterburgwal 60h, Amsterdam",
    description: "Amsterdam's oldest sports club. Join the biggest and old club. Dutch speaking only. Hup!",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603846/ClubZooker/logo30_vvnrzg.png",
    remote_background_url: backgrounds.sample,
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
    address: "Waterlooplein 6, Amsterdam",
    description: "The first Surinamese sports club in Amsterdam. We only accept people with passion for Surinamese food.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603848/ClubZooker/logo38_sry67g.png",
    remote_background_url: backgrounds.sample,
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
    address: "Weteringschans 165 C, Amsterdam",
    description: "The premier sports club for working professionals in Amsterdam. Come here after work to do something healthy.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603847/ClubZooker/logo34_bowsnh.png",
    remote_background_url: backgrounds.sample,
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
    address: "Albert Cuypstraat 66, Amsterdam",
    description: "We are the first Korean sports club in Amsterdam. Only for Korean speaking members.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602204/ClubZooker/logo3_bioonc.png",
    remote_background_url: backgrounds.sample,
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

# 9 address doesnt work

1.times do
  club = Club.create!(
    name: "SC Swift",
    address: "Voetboogstraat 33, Amsterdam",
    description: "We are a fast-paced club aiming to have plenty of fun. Come visit us in Muntplein to join our Club.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602206/ClubZooker/logo17_ovjrkp.jpg",
    remote_background_url: backgrounds.sample,
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


sleep(60)
# 10

1.times do
  club = Club.create!(
    name: "Tonegido",
    address: "Utrechtsestraat 37, Amsterdam",
    description: "We welcome people from all parts of the Netherlands. Dutch language skills required.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602206/ClubZooker/logo14_bbpxdj.png",
    remote_background_url: backgrounds.sample,
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

# 11 address does not work

1.times do
  club = Club.create!(
    name: "FC de Koel",
    address: "Hartenstraat 14, Amsterdam",
    description: "We're a club that's all about exploring, capturing new things, and having fun.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603846/ClubZooker/logo31_zz4vpg.jpg",
    remote_background_url: backgrounds.sample,
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
    address: "Woubruggestraat 28, Amsterdam",
    description: "We like friendships. We like sports. We like you. Join our club.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567605648/ClubZooker/logo41_ucmtd1.png",
    remote_background_url: backgrounds.sample,
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
    address: "Piet Heinkade 173, Amsterdam",
    description: "Change your life and join our club. We welcome all genders, nationalities and ages.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603844/ClubZooker/logo18_crzytd.png",
    remote_background_url: backgrounds.sample,
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

# 14 address does not work

1.times do
  club = Club.create!(
    name: "Mercedes-Benz Club",
    address: "Recht Boomssloot 34, Amsterdam",
    description: "Do you drive a Mercedes? Join us, talk about cars and do some sports.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602205/ClubZooker/logo13_k5i0ag.png",
    remote_background_url: backgrounds.sample,
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
    name: "Bay Club",
    address: "Kinkerstraat 73A, Amsterdam",
    description: "If you're Dutch and like to do sports, join our club any time. We also have international teams.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602206/ClubZooker/logo15_excqhr.png",
    remote_background_url: backgrounds.sample,
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

# 16 address does not work

1.times do
  club = Club.create!(
    name: "Bondi Icebergs",
    address: "De Passage 100, Amsterdam",
    description: "We might seem icecold but once you join our club, you will notice that we warm each other with our spirit.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602205/ClubZooker/logo7_m1kxwa.png",
    remote_background_url: backgrounds.sample,
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



# 17 address does not work

1.times do
  club = Club.create!(
    name: "Boys Club",
    address: "Paul van Vlissingenstraat 24, Amsterdam",
    description: "Saturdays are for the boys and this club is as well.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602205/ClubZooker/logo8_r2oufq.png",
    remote_background_url: backgrounds.sample,
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
    address: "Van der Pekstraat 79, Amsterdam",
    description: "Join our club to for highly motivated members who want to do intense sport. We are the Bulldogs!",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603844/ClubZooker/logo20_rzcxrt.png",
    remote_background_url: backgrounds.sample,
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
    address: "Pilotenstraat 41a, Amsterdam",
    description: "Join the Bisons and belong to one of Amsterdam's most prominent sports clubs. On the Bisons",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603847/ClubZooker/logo33_skehoh.jpg",
    remote_background_url: backgrounds.sample,
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

sleep(60)
# 20

1.times do
  club = Club.create!(
    name: "Social Club",
    address: "ArenA Boulevard 1, Amsterdam",
    description: "Our club is all about having fun and having a good time with your friends.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602205/ClubZooker/logo5_njhjil.png",
    remote_background_url: backgrounds.sample,
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



# 21 address does not work

1.times do
  club = Club.create!(
    name: "Clovely",
    address: "Danzigerkade 8, Amsterdam",
    description: "Come to Danzigerkade to do sports and make new friends. We are waiting for you.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602205/ClubZooker/logo11_mixve9.png",
    remote_background_url: backgrounds.sample,
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
    address: "Handboogstraat 29, Amsterdam",
    description: "A club for passionate dog owners to do sports together. Dogs are allowed on the club property.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567605648/ClubZooker/logo38_nz9vyv.jpg",
    remote_background_url: backgrounds.sample,
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
    name: "Outdoor Sports Club",
    address: "Riekerweg 15, Amsterdam",
    description: "We're a club that does anything outdoors whenever the weather is good. Come join us!",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602205/ClubZooker/logo4_lg2dsw.jpg",
    remote_background_url: backgrounds.sample,
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

# 24 address does not work



1.times do
  club = Club.create!(
    name: "Office Club",
    address: "Fogostraat 10, Amsterdam",
    description: "We're the primary club in Amsterdam for working profressionals from around the world. Come join us.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602205/ClubZooker/logo12_akxhir.png",
    remote_background_url: backgrounds.sample,
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
    name: "Amsterdam Pitbulls",
    address: "Doorweg 32, Amstelveen",
    description: "Come join us for different sport activities. We take sport seriously and compete on the highest level.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567605897/ClubZooker/logo43_paywtc.jpg",
    remote_background_url: backgrounds.sample,
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
    address: "Naritaweg 48, Amsterdam",
    description: "TN 22 is Amsterdam's primary club for woman in their 30s. Meet other like minded individuals.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602205/ClubZooker/logo9_eepvxp.jpg",
    remote_background_url: backgrounds.sample,
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

# 27 address does not work

1.times do
  club = Club.create!(
    name: "SCG Classic",
    address: "Uilenstede 73A, Amstelveen",
    description: "Join us, meet new friends from Amsterdam, and play different sports.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602206/ClubZooker/logo10_chqrhy.jpg",
    remote_background_url: backgrounds.sample,
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
    address: "Bijlmerdreef 131, Amsterdam",
    description: "We are Amsterdam's most popular club for Germans. We welcome anyone with German skills who wants to do sport.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567606016/ClubZooker/logo44_posbvc.gif",
    remote_background_url: backgrounds.sample,
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
    address: "Pampusweg 20, Muiden",
    description: "We love sport! How about you? Come join us every monday?.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602207/ClubZooker/Greenway_qihi1x.png",
    remote_background_url: backgrounds.sample,
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

sleep(60)
# 30


1.times do
  club = Club.create!(
    name: "Tanaina's Club",
    address: "Oranje-Vrijstaatkade 21, Amsterdam",
    description: "Tanaina founded this club in 1987. Since then we welcomed more than 1000 members looking to do fun sports.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602206/ClubZooker/logo16_eaq8ku.png",
    remote_background_url: backgrounds.sample,
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
    address: "Oude Haagseweg 200, Badhoevedorp",
    description: "Our sports club strives do to improve your fitness, health and happiness. Come join us!",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603844/ClubZooker/logo22_ux0mze.png",
    remote_background_url: backgrounds.sample,
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
    address: "Confuciusplein 14, Amsterdam",
    description: "Welcome expats! Are you new to Amsterdam and want to join a sports club? Come join us and have lots of fun and meet new friends.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603845/ClubZooker/logo21_wg4yyf.png",
    remote_background_url: backgrounds.sample,
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
    address: "Stadsplein 52, Amstelveen",
    description: "Join the Eagles and change your life by doing more sport and getting to know new people.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603847/ClubZooker/logo36_ocvue3.jpg",
    remote_background_url: backgrounds.sample,
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
    name: "Pelican Waters",
    address: "Science Park 410, Amsterdam",
    description: "We are located in the Science Park and love to take in scientists from around the world.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603844/ClubZooker/logo19_swruul.png",
    remote_background_url: backgrounds.sample,
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
sleep(60)

1.times do
  club = Club.create!(
    name: "Italian Club",
    address: "Gillis van Ledenberchstraat 135I, Amsterdam",
    description: "Our club has the best club restaurant! But we offer way more than good Pizza & Pasta. Join us to learn more!",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603846/ClubZooker/logo29_llpnpf.jpg",
    remote_background_url: backgrounds.sample,
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
    address: "Dapperstraat 2, Amsterdam",
    description: "Come join the club with the Cuban culture. We accept members from all over the world.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603844/ClubZooker/logo23_klrl9j.jpg",
    remote_background_url: backgrounds.sample,
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
    address: "Bos en Lommerweg 130, Amsterdam",
    description: "Come to Bos en Lommerweg to check out our club and join us. You will not regret it.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603844/ClubZooker/logo24_mny4xb.png",
    remote_background_url: backgrounds.sample,
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
    name: "FC De Pijp",
    address: "Werfkade 4, Amsterdam",
    description: "Named after the coolest quarter in Amsterdam, we are also the coolest club. Join us!",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603845/ClubZooker/logo25_cd4hct.png",
    remote_background_url: backgrounds.sample,
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
    address: "Waterlandplein 280, Amsterdam",
    description: "We are currently looking for new Dutch speaking members to join our ranks. Please message us if you're interested.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603847/ClubZooker/logo32_zfbcfw.jpg",
    remote_background_url: backgrounds.sample,
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
    address: "Lijnbaansgracht 173, Amsterdam",
    description: "If you are looking for a fun time at a great sports club, you should joun SC Diemen.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567603848/ClubZooker/logo37_yiisxy.jpg",
    remote_background_url: backgrounds.sample,
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

# Create 31 sports

# 1

1.times do
  sport = Sport.create(
    name: "Archery",
    teamsport: false,
    equipment: true,
    intensity: "medium",
    description: "Archery is the art, sport, practice, or skill of using a bow to shoot arrows. Historically, archery has been used for hunting and combat. Today, it is mainly a competitive sport and recreational activity.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669479/ClubZooker/sport1_n0qljx.jpg",
  )
  sports << sport
  p sport
end

# 2

1.times do
  sport = Sport.create(
    name: "Badminton",
    teamsport: false,
    equipment: true,
    intensity: "medium",
    description: "Badminton is a racquet sport played using racquets to hit a shuttlecock across a net. Badminton is often played as a casual outdoor activity in a yard or on a beach; formal games are played on a rectangular indoor court.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669480/ClubZooker/sport2_ramauf.jpg",
  )
  sports << sport
  p sport
end

# 3

1.times do
  sport = Sport.create(
    name: "Basketball",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "Basketball is a team sport in which two teams compete with the primary objective of shooting a basketball through the defender's hoop while preventing the opposing team from shooting through their own hoop.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669572/ClubZooker/joel-muniz-Ue5MJoavkIc-unsplash_qmb910.jpg",
  )
  sports << sport
  p sport
end

# 4

1.times do
  sport = Sport.create(
    name: "Boxing",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "Boxing is a combat sport in which two people, usually wearing protective gloves, throw punches at each other for a predetermined amount of time in a boxing ring.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669477/ClubZooker/hermes-rivera-qbf59TU077Q-unsplash_xugsov.jpg",
  )
  sports << sport
  p sport
end

# 5

1.times do
  sport = Sport.create(
    name: "Climbing",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "Climbing is the activity of using one's hands, feet, or any other part of the body to ascend a steep topographical object. It is done for locomotion, recreation and competition.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669477/ClubZooker/hu-chen-etYvgxNEKlM-unsplash_qjx0fm.jpg",
  )
  sports << sport
  p sport
end

# 6

1.times do
  sport = Sport.create(
    name: "Cycling",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "Cycling, also called biking or bicycling, is the use of bicycles for transport, recreation, exercise or sport.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669481/ClubZooker/markus-spiske-WUehAgqO5hE-unsplash_c8pw54.jpg",
  )
  sports << sport
  p sport
end

# 7

1.times do
  sport = Sport.create(
    name: "Dodgeball",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "Dodgeball is a team sport in which players on two teams try to throw balls and hit opponents, while avoiding being hit themselves. The objective of each team is to eliminate all members of the opposing team by hitting them with thrown balls or through other means.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669481/ClubZooker/sport4_jdxlnj.jpg",
  )
  sports << sport
  p sport
end

# 8

1.times do
  sport = Sport.create(
    name: "Fencing",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "There are three forms of modern fencing, each of which uses a different kind of weapon and has different rules; thus the sport itself is divided into three competitive scenes: foil, épée, and sabre. Most competitive fencers choose to specialize in one weapon only.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669474/ClubZooker/chuttersnap-wNRgtjQQUCw-unsplash_fuhste.jpg",
  )
  sports << sport
  p sport
end

# 9

1.times do
  sport = Sport.create(
    name: "Field Hockey",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "Field hockey is a team game of the hockey family. Each team plays with eleven players, including the goalie. Players use sticks to hit a round, hard, plastic ball in order to score goals.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669476/ClubZooker/jeffrey-f-lin-rDceEUj7Klo-unsplash_yror1u.jpg",
  )
  sports << sport
  p sport
end

# 10

1.times do
  sport = Sport.create(
    name: "Football",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "Foorball is a team sport played with a spherical ball between two teams of eleven players. It is played by 250 million players in over 200 countries and dependencies, making it the world's most popular sport. The object of the game is to score by moving the ball beyond the goal line into the opposing goal.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669477/ClubZooker/isaiah-rustad-IEwZRIVwoCs-unsplash_1_iaolsd.jpg",
  )
  sports << sport
  p sport
end

# 11

1.times do
  sport = Sport.create(
    name: "Golf",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "Golf is a club-and-ball sport in which players use various clubs to hit balls into a series of holes on a course in as few strokes as possible. Coping with the varied terrains encountered on different courses is a key part of the game.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669474/ClubZooker/court-prather-Nka1wVAQWa4-unsplash_ibjtli.jpg",
  )
  sports << sport
  p sport
end

# 12

1.times do
  sport = Sport.create(
    name: "Handball",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "Handball is a team sport in which two teams of seven players each pass a ball using their hands with the aim of throwing it into the goal of the other team. A standard match consists of two periods of 30 minutes, and the team that scores more goals wins.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669478/ClubZooker/miguel-puig-phU8NHF85rU-unsplash_mofjqw.jpg",
  )
  sports << sport
  p sport
end

# 13

1.times do
  sport = Sport.create(
    name: "Horse Riding",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "Horse riding refers to the skill and sport of riding, driving, steeplechasing or vaulting with horses. This broad description includes the use of horses for practical working purposes, transportation, recreational activities, artistic or cultural exercises, and competitive sport.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669481/ClubZooker/kirsty-huth-BsLd5k1QHkQ-unsplash_nn9lwe.jpg",
  )
  sports << sport
  p sport
end

# 14

1.times do
  sport = Sport.create(
    name: "Korfball",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "Korfball is a ball sport, with similarities to netball and basketball. It is played by two teams and the objective is to throw a ball into a netless basket that is mounted on a 3.5 m high pole.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669473/ClubZooker/sport5_ab86i8.jpg",
  )
  sports << sport
  p sport
end

# 15

1.times do
  sport = Sport.create(
    name: "Krav Maga",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "Krav Maga is a military self-defence and fighting system developed for the Israel Defense Forces and Israeli security forces derived from a combination of techniques sourced from boxing, wrestling, aikido, judo and karate, along with realistic fight training.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669472/ClubZooker/sport6_v1qlwg.jpg",
  )
  sports << sport
  p sport
end

# 16

1.times do
  sport = Sport.create(
    name: "Kung Fu",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "Kung Fu are the several hundred fighting styles that have developed over the centuries in China. Styles that focus on qi manipulation are called internal, while others that concentrate on improving muscle and cardiovascular fitness are called external.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669474/ClubZooker/thao-le-hoang-uGbG4LnMFMY-unsplash_jh3ejd.jpg",
  )
  sports << sport
  p sport
end

# 17

1.times do
  sport = Sport.create(
    name: "Quidditch",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "Quidditch is a sport of two teams of seven players each mounted on broomsticks played on a hockey rink-sized pitch. It is based on a fictional game of the same name in the Harry Potter series of novels. The game is also sometimes referred to as muggle quidditch to distinguish.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567670765/ClubZooker/quidditch_oxomog.jpg",
  )
  sports << sport
  p sport
end

#18

1.times do
  sport = Sport.create(
    name: "Rowing",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "Rowing is the act of propelling a boat using the motion of oars in the water by displacing water to propel the boat forward. The sport can be either recreational for enjoyment or fitness, or competitive, when athletes race against each other in boats.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669478/ClubZooker/morgan-mcknight-VVAKCaMCjrQ-unsplash_lhaxfq.jpg"
  )
  sports << sport
  p sport
end

#19

1.times do
  sport = Sport.create(
    name: "Rugby",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "Rugby is a football game played with an oval ball by two teams of 15 players or 13 players. Players try to score points by carrying the ball to their opponents' end of the field, or by kicking it over a bar fixed between two posts.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669480/ClubZooker/olga-guryanova-ft7vJxwl2RY-unsplash_b0tg4e.jpg",
  )
  sports << sport
  p sport
end

# 20

1.times do
  sport = Sport.create(
    name: "Running",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "The main intention of running is to increase physical fitness with less stress on the body than from faster running but more than walking, or to maintain a steady speed for longer periods of time. Performed over long distances, it is a form of aerobic endurance training.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669473/ClubZooker/andrew-tanglao-3I2vzcmEpLU-unsplash_irzhvb.jpg",
  )
  sports << sport
  p sport
end

# 21

1.times do
  sport = Sport.create(
    name: "Sailing",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "Sailing employs the wind—acting on sails, wingsails or kites—to propel a craft on the surface of the water. Today, most sailing represents a form of recreation or sport.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669477/ClubZooker/ludomil-lsXbZtrVSdQ-unsplash_aku5eq.jpg",
  )
  sports << sport
  p sport
end

# 22

1.times do
  sport = Sport.create(
    name: "Squash",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "Squash is a ball sport played by two or four players in a four-walled court with a small, hollow rubber ball. The players alternate in striking the ball on the four walls and the object of the game is to hit the ball in such a way that the opponent is not able to play a valid return.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669472/ClubZooker/sport7_stpwha.jpg",
  )
  sports << sport
  p sport
end

#23

1.times do
  sport = Sport.create(
    name: "Surfing",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "Surfing is a surface water sport in which the wave rider, referred to as a surfer, rides on the forward or face of a moving wave, which usually carries the surfer towards the shore. Waves suitable for surfing are primarily found in the ocean, but can also be found in lakes or rivers.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669479/ClubZooker/nicole-honeywill-oC32cy4x-ZA-unsplash_q2uooq.jpg",
  )
  sports << sport
  p sport
end

#24

1.times do
  sport = Sport.create(
    name: "Swimming",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "Swimming is the self-propulsion of a person through water, usually for recreation, sport, exercise, or survival. Locomotion is achieved through coordinated movement of the limbs, the body, or both.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669476/ClubZooker/gentrit-sylejmani-JjUyjE-oEbM-unsplash_a72xzf.jpg",
  )
  sports << sport
  p sport
end

#25

1.times do
  sport = Sport.create(
    name: "Table Tennis",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "Table tennis, also known as ping-pong, is a sport in which two or four players hit a lightweight ball back and forth across a table using small rackets. The game takes place on a hard table divided by a net.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669480/ClubZooker/ilya-pavlov-dybZ3jXtYUo-unsplash_mpctr3.jpg",
  )
  sports << sport
  p sport
end

#26

1.times do
  sport = Sport.create(
    name: "Tennis",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "Tennis is a racket sport that can be played individually against a single opponent or between two teams of two players each. Each player uses a tennis racket that is strung with cord to strike a hollow rubber ball covered with felt over or around a net and into the opponent's court.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669475/ClubZooker/christopher-burns-YSfTcJZR-ws-unsplash_ivuvly.jpg",
  )
  sports << sport
  p sport
end

#27

1.times do
  sport = Sport.create(
    name: "Ultimate Frisbee",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "Ultimate frisbee, is a non-contact team sport played with a flying disc(frisbee). Points are scored by passing the disc to a teammate in the opposing end zone.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669473/ClubZooker/sport8_xypbne.jpg",
  )
  sports << sport
  p sport
end

# 28

1.times do
  sport = Sport.create(
    name: "Volleyball",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "Volleyball is a popular team sport in which two teams of six players are separated by a net. Each team tries to score points by grounding a ball on the other team's court under organized rules.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669475/ClubZooker/elizeu-dias--Vae5P6v-aI-unsplash_xh5ql3.jpg",
  )
  sports << sport
  p sport
end

# 29

1.times do
  sport = Sport.create(
    name: "Water Polo",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "Water polo is a competitive team sport played in the water between two teams. The game consists of four quarters in which the two teams attempt to score goals by throwing the ball into the opposing team's goal.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669474/ClubZooker/eugene-lim-gYglzOhOirg-unsplash_dzak1l.jpg",
  )
  sports << sport
  p sport
end

# 30

1.times do
  sport = Sport.create(
    name: "Wrestling",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "Wrestling is a physical competition, between two competitors or sparring partners, who attempt to gain and maintain a superior position. There are a wide range of styles with varying rules with both traditional historic and modern styles.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669475/ClubZooker/chris-chow-1pUWPMFo6VE-unsplash_ihhdom.jpg",
  )
  sports << sport
  p sport
end

#31

1.times do
  sport = Sport.create(
    name: "Yoga",
    teamsport: true,
    equipment: true,
    intensity: "medium",
    description: "Yoga is a group of physical, mental, and spiritual practices or disciplines which originated in ancient India. There is a broad variety of yoga schools, practices, and goals in Hinduism, Buddhism, and Jainism.",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567669477/ClubZooker/form-w0YIvob3LlI-unsplash_cza7pv.jpg",
  )
  sports << sport
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

# Create Testuser who is a club admin

1.times do
  club = Club.create!(
    name: "Amsterdam Leeuwen",
    address: "Tweede Egelantiersdwarsstraat 9, Amsterdam",
    description: "Join the Amsterdam Lions to meet new people, try new sports and have a great time. We want you!",
    remote_photo_url: "https://res.cloudinary.com/dcptvbn0h/image/upload/v1567602205/ClubZooker/club.pjg_t9ss6c.png",
    remote_background_url: "https://res.cloudinary.com/dwuobqwk0/image/upload/v1567761949/photo-1464983308776-3c7215084895_kaow8n.jpg"
  )

  club.sports.push Sport.find_by(name: "Football")
  club.sports.push Sport.find_by(name: "Volleyball")
  club.sports.push Sport.find_by(name: "Basketball")


  admin = User.create(
    email: 'test@admin.com',
    password: '123456789',
    name: 'Frans Knaapen',
    age: 45,
    address: Faker::Address.full_address,
    description: "Join my club to have great fun",
    remote_photo_url: "https://res.cloudinary.com/vivelafrans/image/upload/v1567686301/i7gio95kxqul7pro54vl.jpg",
  )


  club.update_attributes admin_id: admin.id
  p admin
end

# Create Testuser who is normal user

us = User.create(
    email: 'test@user.com',
    password: '123456789',
    name: 'Thomas Johnsen',
    age: 27,
    address: 'Nieuwe Oostenburgerstraat 10-D, Amsterdam',
    description: "I am looking for a cool sports club",
    remote_photo_url: "https://res.cloudinary.com/vivelafrans/image/upload/v1567690936/Tom_fwjpdw.jpg"
)
us.sports.push Sport.find_by(name: "Football")
users << us







puts "Finished creating #{users.count + 1} users"
puts "Finished creating #{admins.count + 1} admins"
puts "Finished creating #{sports.count + 1} sports"
