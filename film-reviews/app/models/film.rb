class Film < ApplicationRecord
    has_many :reviews
    has_many :film_genres
    has_many :genres, through: :film_genres
end
