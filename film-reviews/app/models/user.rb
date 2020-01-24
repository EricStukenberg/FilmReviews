class User < ApplicationRecord
    has_secure_password
    has_many :reviews
    validates :name, presence: true
end
