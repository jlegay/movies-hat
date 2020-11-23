# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

puts 'cleaning database'

Movie.destroy_all
Hat.destroy_all
User.destroy_all

puts "Database clean"

puts "Creating users"

basile = User.create(email: 'basile@mail.com', password: 'testtest')
basile.save!

jeanne = User.create(email: 'jeanne@mail.com', password: 'testtest')
jeanne.save!

puts 'Users created !'

puts 'Creating hats'

jbezio = Hat.create(user: User.first, name: 'Jbezio')
file = URI.open('https://cac.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fcac.2F2018.2F09.2F25.2Fd7761c45-9e39-4bf3-b473-22bac38a8f84.2Ejpeg/748x372/quality/80/crop-from/center/pop-corn-sale-au-paprika.jpeg')
jbezio.photo.attach(io: file, filename: 'nes.png', content_type: "image/png")
jbezio.save!


puts 'One done'

comedy = Hat.create(user: User.first, name: 'Comedy')
file = URI.open('https://lionhearttheatre.org/wp-content/uploads/2016/01/download-14.jpg')
comedy.photo.attach(io: file, filename: 'nes.png', content_type: "image/png")
comedy.save!


puts 'Two'

madeleine = Hat.create(user: User.first, name: 'Madeleine')
file = URI.open('https://img-3.journaldesfemmes.fr/dO5glOUIHoTwdxbdY6mAliXMA9Y=/750x/smart/7dbb55e7dd03410685b09a0a3fb8b53a/recipe-jdf/10026000.jpg')
madeleine.photo.attach(io: file, filename: 'nes.png', content_type: "image/png")
madeleine.save!

puts 'three'

horror = Hat.create(user: User.first, name: 'Horror')
file = URI.open('https://s3-us-west-2.amazonaws.com/flx-editorial-wordpress/wp-content/uploads/2018/10/18164731/700Horror.jpg')
horror.photo.attach(io: file, filename: 'nes.png', content_type: "image/png")
horror.save!

puts 'Four'

old_movies = Hat.create(user: User.first, name: 'Old Movies')
file = URI.open('https://fr.web.img3.acsta.net/medias/nmedia/18/86/14/42/19825206.jpg')
old_movies.photo.attach(io: file, filename: 'nes.png', content_type: "image/png")
old_movies.save!

puts 'Hats created !'

puts 'Creating movies'

incendies = Movie.create(hat: Hat.first)
file = URI.open('https://www.ricketpick.fr/wp-content/uploads/2011/12/incendies.jpg')
incendies.photo.attach(io: file, filename: 'nes.png', content_type: "image/png")
incendies.save!

rambo = Movie.create(hat: Hat.first)
file = URI.open('https://lh3.googleusercontent.com/proxy/ggC4Nbeqn6jvbUnUxfsuye9weqO7nQiOoWcE7aATT6RKwnxn3ZbwbSGB3RtNBOju2KuWTsro5uyIImoTkX9zVbSmxBytRP4O_vyyOw632EwOVt9iWtkJhW8KywF6FdW0kNjmcLFWRRg_T9M')
rambo.photo.attach(io: file, filename: 'nes.png', content_type: "image/png")
rambo.save!

shrek = Movie.create(hat: Hat.first)
file = URI.open('https://medias.spotern.com/spots/w640/112/112313-1532336916.jpg')
shrek.photo.attach(io: file, filename: 'nes.png', content_type: "image/png")
shrek.save!

lotr = Movie.create(hat: Hat.first)
file = URI.open('https://gamespot1.cbsistatic.com/uploads/screen_kubrick/1597/15975876/3719109-3316782-lordoftherings.jpg')
lotr.photo.attach(io: file, filename: 'nes.png', content_type: "image/png")
lotr.save!

puts 'Movies created !'

puts 'That\'s all folks !'



