
require 'open-uri'
require 'faker'

puts "Deleting all the movies"

Movie.delete_all

Actor.delete_all

10.times do
  new_movie = Movie.create(
    title: Faker::Movie.title,
  )
  puts "Movie #{new_movie.id} was created"
end

new_actor = Actor.create(
    name: Faker::Name.name ,
    biography: Faker::Lorem.paragraph
    )
  puts "Actor was created"
end

