class Review < ApplicationRecord
  
    belongs_to :film
    belongs_to :user

    validates :film_title, presence: true
    validates :content, presence: true
    validates :film_title, presence: true
    validates :score, presence: true
    validates :score, :inclusion => 1..10
end
