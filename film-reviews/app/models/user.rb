class User < ApplicationRecord
    has_secure_password
    has_many :reviews
    validates :username, presence: true
end
