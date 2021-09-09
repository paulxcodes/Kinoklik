# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts("Success!")

Movie.create([

{
  title: "Star Wars",
  description: "In a galaxy far away",
  release_date: "2013-01-01",
  language: "Russian",
},

{
  title: "Star Wars2",
  description: "In a galaxy far away away away",
  release_date: "2013-01-01",
  language: "French",
},

{
  title: "Star Wars3",
  description: "In a galaxy far away away away away",
  release_date: "2013-01-01",
  language: "English",
},
{
  title: "Star Wars4",
  description: "In a galaxy ",
  release_date: "2013-01-01",
  language: "English",
}
])
