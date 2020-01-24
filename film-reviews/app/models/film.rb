class Film < ApplicationRecord
    has_many :reviews
    has_many :film_genres
    has_many :genres, through: :film_genres
    validates :title, uniqueness: true 

    def update_score
        
        num_reviews = self.reviews.count
        if(num_reviews != 0)
            self.update(score: self.reviews.average(:score).round)
        end
    end

    def self.sort_by_score
        Film.all.order(score: :desc).limit(10)
    end

end
