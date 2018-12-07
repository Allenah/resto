# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning up database...'
Booking.destroy_all
Restaurant.destroy_all
User.destroy_all
Review.destroy_all

puts 'Creating 2 users'
owner = User.create!(
  first_name: "Paul",
  last_name: "Busby",
  email: "paul.busby@gmail.com",
  password: "secret1",
  photo: "https://avatars3.githubusercontent.com/u/28771572?v=4"
)

guest = User.create!(
  first_name: "Carolina",
  last_name: "Lemos",
  email: "carolina@gmail.com",
  password: "secret2",
  photo: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/erfbtkivocnzh6t26yod.jpg"
)

puts 'Creating 12 restaurants...'

quimera = Restaurant.create!(
name: 'Quimera',
description: 'Craft beers and comfort food set inside an ancient Roman tunnel',
location: 'Lisbon',
lat:'38.705434',
long:'-9.170928',
capacity: 30,
price: 600,
cuisine: 'Portuguese',
user_id: owner.id,
photo: 'https://mir-s3-cdn-cf.behance.net/project_modules/1400/ac133d63578377.5ab4ff8958b55.jpg'
)

wish = Restaurant.create!(
name: 'Wish',
description: 'In addition to sushi, there are Mediterranean and Japanese novelties and a wine list that recalls other times',
location: 'Porto',
lat:'41.1486880',
long:'-8.6683895',
capacity: 80,
price: 1200,
cuisine: 'Japanese',
user_id: owner.id,
photo: 'http://www.gastronomiacomvinhodoporto.com/wp-content/uploads/2015/08/CAB9475.jpg'
)

ramiro = Restaurant.create!(
name: 'Ramiro',
description: 'Relaxed, casual 3-floor seafood and beer drinking eatery established in the 1950s.',
location: 'Lisbon',
lat:'38.720259',
long:'-9.1358652',
capacity: 60,
price: 1000,
cuisine: 'Portuguese',
user_id: owner.id,
photo: 'http://cityguidelisbon.files.wordpress.com/2014/03/ramiro.jpg'
)

rio_maravilha = Restaurant.create!(
name: 'Rio Maravilha',
description: 'The rooftop of an old LX Factory building is a striking setting for one of the most gorgeous views of any bar or restaurants in town.',
location: 'Lisbon',
lat:'38.701856',
long:'-9.1781501',
capacity: 100,
price: 1200,
cuisine: 'Portuguese',
user_id: owner.id,
photo: 'https://nit.pt/wp-content/uploads/2017/03/rio-maravilha-4.jpg'
)

gin_lovers = Restaurant.create!(
name: 'Gin Lovers',
description: 'A passionate group of gin-loving entrepreneurs opened this cocktail bar dedicated to their favorite drink in an Arab-style palace',
location: 'Lisbon',
lat:'38.716921',
long:'-9.148394',
capacity: 120,
price: 5000,
cuisine: 'Portuguese',
user_id: owner.id,
photo: 'http://4.bp.blogspot.com/-DBH7A5-Pfpw/VlkAIi_noTI/AAAAAAAACbc/dflk_kk_t5g/s1600/20151116_Gin_Lovers_JS-2539.jpg'
)

bonsai = Restaurant.create!(
name: 'Bonsai',
description: 'Sushi, sashimi & other Japanese dishes in a contemporary setting with traditional low tables.',
location: 'Lisbon',
lat:'38.715805',
long:'-9.147386',
capacity: 50,
price: 4000,
cuisine: 'Japanese',
user_id: owner.id,
photo: 'https://media.timeout.com/images/103697986/image.jpg'
)

clandestino = Restaurant.create!(
name: 'Clandestino',
description: 'Some of the best chinese food in hipster, graffiti settings',
location: 'Lisbon',
lat:'38.715529',
long:'-9.1462493',
capacity: 60,
price: 1000,
cuisine: 'Chinese',
user_id: owner.id,
photo: 'https://lifecooler.com/files/registos/imagens/447322/329950.jpg'
)

chutnify = Restaurant.create!(
name: 'Chutnify',
description: 'Stylish decor and delicious curries in one of the posher parts of town',
location: 'Lisbon',
lat:'38.714394',
long:'-9.150059',
capacity: 50,
price: 4000,
cuisine: 'Indian',
user_id: owner.id,
photo: 'https://magnolia-portugal.dunegestion.com/w4/php/dune/file.php?file=94706_chutnify2.jpg&hash=af22e99a9d'
)

portarossa = Restaurant.create!(
name: 'Portarossa',
description: 'Referred to as the “little Italy” of Porto, it is a typical Italian bistro.',
location: 'Porto',
lat:'41.1565692',
long:'-8.6765237',
capacity: 80,
price: 1200,
cuisine: 'Italian',
user_id: owner.id,
photo: 'http://portarossa.pt/wp-content/themes/portarossa/images/background/portarossa_banner_home_06.jpg'
)

moules = Restaurant.create!(
name: 'Moules & Beer',
description: 'Quality beers and seafood in a bright and open environment',
location: 'Lisbon',
lat:'38.718725',
long:'-9.164997',
capacity: 80,
price: 3000,
cuisine: 'Belgian',
user_id: owner.id,
photo: 'https://apis.infoportugal.info/cms-media/pois/final/141/JRN.RE.28423-141901.jpg'
)

brasserie = Restaurant.create!(
name: "La Brasserie",
description: 'Steak & frites is the focus of this classically simple bistro, also serving vegetarian options.',
location: 'Lisbon',
lat:'38.7102117',
long:'-9.1431493',
capacity: 80,
price: 6000,
cuisine: 'French',
user_id: owner.id,
photo: 'https://www.visitlisboa.com/sites/default/files/2016-09/1136-la-brasserie-de-l-entrecote%20%281%29.JPG'
)

avillez = Restaurant.create!(
name: 'Bairro do Avillez',
description: 'Another hit from José Avillez, who recently opened this restaurant complex, designed to look like a typical Portuguese neighborhood.',
location: 'Lisbon',
lat:'38.712265',
long:'-9.142378',
capacity: 300,
price: 10000,
cuisine: 'Portuguese',
user_id: owner.id,
photo: 'https://www.joseavillez.pt//images/Backs/Back_298/BairrodoAvillezPateo2.jpg'
)

puts 'Creating 12 bookings...'

booking_quimera = Booking.create!(
  start_time: DateTime.new,
  end_time: DateTime.new,
  user_id: guest.id,
  restaurant_id: quimera.id
)

booking_ramiro = Booking.create!(
  start_time: DateTime.new,
  end_time: DateTime.new,
  user_id: guest.id,
  restaurant_id: ramiro.id
)

booking_wish = Booking.create!(
  start_time: DateTime.new,
  end_time: DateTime.new,
  user_id: guest.id,
  restaurant_id: wish.id
)

booking_portarossa = Booking.create!(
  start_time: DateTime.new,
  end_time: DateTime.new,
  user_id: guest.id,
  restaurant_id: portarossa.id
)

booking_rio_maravilha = Booking.create!(
  start_time: DateTime.new,
  end_time: DateTime.new,
  user_id: guest.id,
  restaurant_id: rio_maravilha.id
)

booking_gin_lovers = Booking.create!(
  start_time: DateTime.new,
  end_time: DateTime.new,
  user_id: guest.id,
  restaurant_id: gin_lovers.id
)

booking_bonsai = Booking.create!(
  start_time: DateTime.new,
  end_time: DateTime.new,
  user_id: guest.id,
  restaurant_id: bonsai.id
)

booking_clandestino = Booking.create!(
  start_time: DateTime.new,
  end_time: DateTime.new,
  user_id: guest.id,
  restaurant_id: clandestino.id
)

booking_chutnify = Booking.create!(
  start_time: DateTime.new,
  end_time: DateTime.new,
  user_id: guest.id,
  restaurant_id: chutnify.id
)

booking_moules = Booking.create!(
  start_time: DateTime.new,
  end_time: DateTime.new,
  user_id: guest.id,
  restaurant_id: moules.id
)

booking_brasserie = Booking.create!(
  start_time: DateTime.new,
  end_time: DateTime.new,
  user_id: guest.id,
  restaurant_id: brasserie.id
)

booking_avillez = Booking.create!(
  start_time: DateTime.new,
  end_time: DateTime.new,
  user_id: guest.id,
  restaurant_id: avillez.id
)

puts 'Creating 5 reviews...'

Review.create!(
description: 'This restaurant is so good. I am going to book this all the time for my superstar clients. The service was great and the venue was very big.',
rating: 5,
booking_id: booking_quimera.id
)

Review.create!(
description: 'I will not be booking this restaurant again. My wedding was ruined due to the horrible service and the dirty bathrooms. Shame on you!',
rating: 2,
booking_id: booking_quimera.id
)

Review.create!(
description: 'We had a very big office Christmas party and this place was perfect! They even helped us decorate the restaurant to make sure the vibe was perfect. Highly recommend!',
rating: 4,
booking_id: booking_quimera.id
)

Review.create!(
description: 'This place sucks.',
rating: 1,
booking_id: booking_quimera.id
)

Review.create!(
description: 'When my boss told me all of our clients were coming into town, I panicked. But this restaurant saved the day! Obrigado!',
rating: 5,
booking_id: booking_quimera.id
)

puts 'Finished!'
