# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
films = Film.create([{ title: 'Star Wars: A new Hope', score: 8.8, director: 'George Lucas',  description: 'Battle in the Stars', release_year: 1977}, { title: 'Star Wars: The Empire Strikes Back', score: 8.7, director: 'Irvin Kershner',  description: 'Battle in the Stars again', release_year: 1980}])