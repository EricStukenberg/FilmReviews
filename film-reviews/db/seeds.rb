# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

films = Film.create([{ title: 'Star Wars: A new Hope', score: 8.8, director: 'George Lucas',  description: 'Battle in the Stars', release_year: 1977}, { title: 'Star Wars: The Empire Strikes Back', score: 8.7, director: 'Irvin Kershner',  description: 'Battle in the Stars again', release_year: 1980}])
Review.create(film_title: films.first[:title], content: "Star wars was a great movie I hope they make more not like too many more I don't want them to over do it.", score: 8.6, user_id: 1, film_id: 1)
genre = Genre.create(name: 'Sci-Fi')
Genre.create(name: 'Fantasy')
Genre.create(name: 'Action')
Genre.create(name: 'Drama')
Genre.create(name: 'Noire')
Genre.create(name: 'Crime')


FilmGenre.create(film_id: films.first.id, genre_id: genre.id)

30.times do 
    title = Faker::Book.title
    score = rand(10) + rand().round(1)
    director = Faker::Name.name
    description = Faker::Movie.quote
    release_year = rand(1906..2020)
    film = Film.create( title: title, score: score, director: director,  description: description, release_year: release_year)
    FilmGenre.create(film_id: film.id, genre_id: rand(1..6))
end