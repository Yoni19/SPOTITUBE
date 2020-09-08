# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'


User.destroy_all

Playlist.destroy_all



5.times do |i|


    User = User.create(email: Faker::Name.first_name + "@test.com", 

    pseudo: Faker::Name.first_name,, 

    first_name: Faker::Name.first_name,

    last_name: Faker::Name.last_name,

    description: Faker::Lorem.paragraph,


    password: "123456",

    password_confirmation: "123456",

    is_admin: false

  )
    end

puts "Create User : Done"







5.times do |x|

    playlist = Playlist.create(

      title: Faker::ChuckNorris.fact,
      description: Faker::Lorem.paragraph
    
    )

puts "Create Playlist - Done"
  




end

