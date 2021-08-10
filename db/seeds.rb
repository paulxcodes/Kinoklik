
require 'open-uri'
require 'faker'

puts "Deleting all the movies"

Movie.delete_all


10.times do
  new_movie = Movie.create(
    title: Faker::Movie.title,
    description: Faker::Lorem.sentence,
    language:Faker::Lorem.word,
  )
  puts "Movie #{new_movie.id} was created"
end


