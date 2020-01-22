class FilmGenre < ApplicationRecord
    has_many :films
    has_many :genres
end
