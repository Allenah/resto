# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating 10 restaurants...'


Restaurant.create!(
name: 'Ramiro',
description: 'Relaxed, casual 3-floor seafood and beer drinking eatery established in the 1950s.',
location: 'Lisbon',
capacity: 60,
price: 1000,
cuisine: 'Portuguese',
photo: 'http://cityguidelisbon.files.wordpress.com/2014/03/ramiro.jpg'
)

Restaurant.create!(
name: 'Quimera',
description: 'Relaxed, casual 3-floor seafood and beer drinking eatery established in the 1950s.',
location: 'Lisbon',
capacity: 30,
price: 600,
cuisine: 'Portuguese',
photo: 'https://mir-s3-cdn-cf.behance.net/project_modules/1400/ac133d63578377.5ab4ff8958b55.jpg'
)

Restaurant.create!(
name: 'Rio Maravilha',
description: 'The rooftop of an old LX Factory building is a striking setting for one of the most gorgeous views of any bar or restaurants in town.',
location: 'Lisbon',
capacity: 100,
price: 1200,
cuisine: 'Portuguese',
photo: 'https://nit.pt/wp-content/uploads/2017/03/rio-maravilha-4.jpg'
)

Restaurant.create!(
name: 'Gin Lovers',
description: 'A passionate group of gin-loving entrepreneurs opened this cocktail bar dedicated to their favorite drink in an Arab-style palace',
location: 'Lisbon',
capacity: 120,
price: 5000,
cuisine: 'Portuguese',
photo: 'http://4.bp.blogspot.com/-DBH7A5-Pfpw/VlkAIi_noTI/AAAAAAAACbc/dflk_kk_t5g/s1600/20151116_Gin_Lovers_JS-2539.jpg'
)

Restaurant.create!(
name: 'Bonsai',
description: 'Relaxed, casual 3-floor seafood and beer drinking eatery established in the 1950s.',
location: 'Lisbon',
capacity: 30,
price: 600,
cuisine: 'Japanese',
photo: 'https://mir-s3-cdn-cf.behance.net/project_modules/1400/ac133d63578377.5ab4ff8958b55.jpg'
)

Restaurant.create!(
name: 'Quimera',
description: 'Relaxed, casual 3-floor seafood and beer drinking eatery established in the 1950s.',
location: 'Lisbon',
capacity: 30,
price: 600,
cuisine: 'Portuguese',
photo: 'https://mir-s3-cdn-cf.behance.net/project_modules/1400/ac133d63578377.5ab4ff8958b55.jpg'
)

Restaurant.create!(
name: 'Quimera',
description: 'Relaxed, casual 3-floor seafood and beer drinking eatery established in the 1950s.',
location: 'Lisbon',
capacity: 30,
price: 600,
cuisine: 'Portuguese',
photo: 'https://mir-s3-cdn-cf.behance.net/project_modules/1400/ac133d63578377.5ab4ff8958b55.jpg'
)

Restaurant.create!(
name: 'Quimera',
description: 'Relaxed, casual 3-floor seafood and beer drinking eatery established in the 1950s.',
location: 'Lisbon',
capacity: 30,
price: 600,
cuisine: 'Portuguese',
photo: 'https://mir-s3-cdn-cf.behance.net/project_modules/1400/ac133d63578377.5ab4ff8958b55.jpg'
)

Restaurant.create!(
name: 'Quimera',
description: 'Relaxed, casual 3-floor seafood and beer drinking eatery established in the 1950s.',
location: 'Lisbon',
capacity: 30,
price: 600,
cuisine: 'Portuguese',
photo: 'https://mir-s3-cdn-cf.behance.net/project_modules/1400/ac133d63578377.5ab4ff8958b55.jpg'
)

Restaurant.create!(
name: 'Quimera',
description: 'Relaxed, casual 3-floor seafood and beer drinking eatery established in the 1950s.',
location: 'Lisbon',
capacity: 30,
price: 600,
cuisine: 'Portuguese',
photo: 'https://mir-s3-cdn-cf.behance.net/project_modules/1400/ac133d63578377.5ab4ff8958b55.jpg'
)


puts "Created 10 restaurant seeds!"
