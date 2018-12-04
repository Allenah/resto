# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating 10 restaurants...'

puts "Cleaning up database..."
Restaurant.destroy_all
User.destroy_all

User.create!(first_name: "Paul", last_name: "Busby", email: "noreply@gmail.com", password: "secret")

Restaurant.create!(
name: 'Ramiro',
description: 'Relaxed, casual 3-floor seafood and beer drinking eatery established in the 1950s.',
location: 'Lisbon',
capacity: 60,
price: 1000,
cuisine: 'Portuguese',
user_id: 1,
photo: 'http://cityguidelisbon.files.wordpress.com/2014/03/ramiro.jpg'
)

Restaurant.create!(
name: 'Quimera',
description: 'Craft beers and comfort food set inside an ancient Roman tunnel',
location: 'Lisbon',
capacity: 30,
price: 600,
cuisine: 'Portuguese',
user_id: 1,
photo: 'https://mir-s3-cdn-cf.behance.net/project_modules/1400/ac133d63578377.5ab4ff8958b55.jpg'
)

Restaurant.create!(
name: 'Rio Maravilha',
description: 'The rooftop of an old LX Factory building is a striking setting for one of the most gorgeous views of any bar or restaurants in town.',
location: 'Lisbon',
capacity: 100,
price: 1200,
cuisine: 'Portuguese',
user_id: 1,
photo: 'https://nit.pt/wp-content/uploads/2017/03/rio-maravilha-4.jpg'
)

Restaurant.create!(
name: 'Gin Lovers',
description: 'A passionate group of gin-loving entrepreneurs opened this cocktail bar dedicated to their favorite drink in an Arab-style palace',
location: 'Lisbon',
capacity: 120,
price: 5000,
cuisine: 'Portuguese',
user_id: 1,
photo: 'http://4.bp.blogspot.com/-DBH7A5-Pfpw/VlkAIi_noTI/AAAAAAAACbc/dflk_kk_t5g/s1600/20151116_Gin_Lovers_JS-2539.jpg'
)

Restaurant.create!(
name: 'Bonsai',
description: 'Sushi, sashimi & other Japanese dishes in a contemporary setting with traditional low tables.',
location: 'Lisbon',
capacity: 50,
price: 4000,
cuisine: 'Japanese',
user_id: 1,
photo: 'https://media.timeout.com/images/103697986/image.jpg'
)

Restaurant.create!(
name: 'Clandestino',
description: 'Some of the best chinese food in hipster, graffiti settings',
location: 'Lisbon',
capacity: 60,
price: 1000,
cuisine: 'Chinese',
user_id: 1,
photo: 'https://cdn.vox-cdn.com/thumbor/Erxs97xM_IaQLkStgNnY5jBP26Y=/0x0:5307x3538/920x0/filters:focal(0x0:5307x3538):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/8756501/20170622JF_EATER_CHINESE_RESTAURANTS_18.jpg'
)

Restaurant.create!(
name: 'Chutnify',
description: 'Stylish decor and delicious curries in one of the posher parts of town',
location: 'Lisbon',
capacity: 50,
price: 4000,
cuisine: 'Indian',
user_id: 1,
photo: 'https://magnolia-portugal.dunegestion.com/w4/php/dune/file.php?file=94706_chutnify2.jpg&hash=af22e99a9d'
)

Restaurant.create!(
name: 'Moules & Beer',
description: 'Quality beers and seafood in a bright and open environment',
location: 'Lisbon',
capacity: 80,
price: 3000,
cuisine: 'Belgian',
user_id: 1,
photo: 'https://apis.infoportugal.info/cms-media/pois/final/141/JRN.RE.28423-141901.jpg'
)

Restaurant.create!(
name: "La Brasserie de LEntrecôte",
description: 'Steak & frites is the focus of this classically simple bistro, also serving vegetarian options.',
location: 'Lisbon',
capacity: 80,
price: 6000,
cuisine: 'French',
user_id: 1,
photo: 'https://www.visitlisboa.com/sites/default/files/2016-09/1136-la-brasserie-de-l-entrecote%20%281%29.JPG'
)

Restaurant.create!(
name: 'Bairro do Avillez',
description: 'Another hit from José Avillez, who recently opened this restaurant complex, designed to look like a typical Portuguese neighborhood.',
location: 'Lisbon',
capacity: 300,
price: 10000,
cuisine: 'Portuguese',
user_id: 1,
photo: 'https://cdn.vox-cdn.com/thumbor/ruJOg1jkiwnpOH3WJkno1h5Xdc0=/0x0:1280x853/970x728/filters:focal(538x325:742x529):format(webp):no_upscale()/cdn.vox-cdn.com/uploads/chorus_image/image/62561177/8_Lisbon_BairrodoAvillez.0.0.jpg'
)

puts "Created 10 restaurant seeds!"
