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

puts 'Creating 10 restaurants...'

restaurant = Restaurant.create!(
name: 'Quimera',
description: 'Craft beers and comfort food set inside an ancient Roman tunnel',
location: 'Lisbon',
capacity: 30,
price: 600,
cuisine: 'Portuguese',
user_id: owner.id,
photo: 'https://mir-s3-cdn-cf.behance.net/project_modules/1400/ac133d63578377.5ab4ff8958b55.jpg'
)

Restaurant.create!(
name: 'Ramiro',
description: 'Relaxed, casual 3-floor seafood and beer drinking eatery established in the 1950s.',
location: 'Lisbon',
capacity: 60,
price: 1000,
cuisine: 'Portuguese',
user_id: owner.id,
photo: 'http://cityguidelisbon.files.wordpress.com/2014/03/ramiro.jpg'
)

Restaurant.create!(
name: 'Rio Maravilha',
description: 'The rooftop of an old LX Factory building is a striking setting for one of the most gorgeous views of any bar or restaurants in town.',
location: 'Lisbon',
capacity: 100,
price: 1200,
cuisine: 'Portuguese',
user_id: owner.id,
photo: 'https://nit.pt/wp-content/uploads/2017/03/rio-maravilha-4.jpg'
)

Restaurant.create!(
name: 'Gin Lovers',
description: 'A passionate group of gin-loving entrepreneurs opened this cocktail bar dedicated to their favorite drink in an Arab-style palace',
location: 'Lisbon',
capacity: 120,
price: 5000,
cuisine: 'Portuguese',
user_id: owner.id,
photo: 'http://4.bp.blogspot.com/-DBH7A5-Pfpw/VlkAIi_noTI/AAAAAAAACbc/dflk_kk_t5g/s1600/20151116_Gin_Lovers_JS-2539.jpg'
)

Restaurant.create!(
name: 'Bonsai',
description: 'Sushi, sashimi & other Japanese dishes in a contemporary setting with traditional low tables.',
location: 'Lisbon',
capacity: 50,
price: 4000,
cuisine: 'Japanese',
user_id: owner.id,
photo: 'https://media.timeout.com/images/103697986/image.jpg'
)

Restaurant.create!(
name: 'Clandestino',
description: 'Some of the best chinese food in hipster, graffiti settings',
location: 'Lisbon',
capacity: 60,
price: 1000,
cuisine: 'Chinese',
user_id: owner.id,
photo: 'https://lifecooler.com/files/registos/imagens/447322/329950.jpg'
)

Restaurant.create!(
name: 'Chutnify',
description: 'Stylish decor and delicious curries in one of the posher parts of town',
location: 'Lisbon',
capacity: 50,
price: 4000,
cuisine: 'Indian',
user_id: owner.id,
photo: 'https://magnolia-portugal.dunegestion.com/w4/php/dune/file.php?file=94706_chutnify2.jpg&hash=af22e99a9d'
)

Restaurant.create!(
name: 'Moules & Beer',
description: 'Quality beers and seafood in a bright and open environment',
location: 'Lisbon',
capacity: 80,
price: 3000,
cuisine: 'Belgian',
user_id: owner.id,
photo: 'https://apis.infoportugal.info/cms-media/pois/final/141/JRN.RE.28423-141901.jpg'
)

Restaurant.create!(
name: "La Brasserie",
description: 'Steak & frites is the focus of this classically simple bistro, also serving vegetarian options.',
location: 'Lisbon',
capacity: 80,
price: 6000,
cuisine: 'French',
user_id: owner.id,
photo: 'https://www.visitlisboa.com/sites/default/files/2016-09/1136-la-brasserie-de-l-entrecote%20%281%29.JPG'
)

Restaurant.create!(
name: 'Bairro do Avillez',
description: 'Another hit from José Avillez, who recently opened this restaurant complex, designed to look like a typical Portuguese neighborhood.',
location: 'Lisbon',
capacity: 300,
price: 10000,
cuisine: 'Portuguese',
user_id: owner.id,
photo: 'https://www.joseavillez.pt//images/Backs/Back_298/BairrodoAvillezPateo2.jpg'
)

puts 'Creating 1 booking...'
booking = Booking.create!(
  start_time: DateTime.new,
  end_time: DateTime.new,
  user_id: guest.id,
  restaurant_id: restaurant.id
)

puts 'Creating 5 reviews...'

Review.create!(
description: 'This restaurant is so good. I am going to book this all the time for my superstar clients. The service was great and the venue was very big.',
rating: 5,
booking_id: booking.id
)

Review.create!(
description: 'I will not be booking this restaurant again. My wedding was ruined due to the horrible service and the dirty bathrooms. Shame on you!',
rating: 2,
booking_id: booking.id
)

Review.create!(
description: 'We had a very big office Christmas party and this place was perfect! They even helped us decorate the restaurant to make sure the vibe was perfect. Highly recommend!',
rating: 4,
booking_id: booking.id
)

Review.create!(
description: 'This place sucks.',
rating: 1,
booking_id: booking.id
)

Review.create!(
description: 'When my boss told me all of our clients were coming into town, I panicked. But this restaurant saved the day! Obrigado!',
rating: 5,
booking_id: booking.id
)

puts 'Finished!'
