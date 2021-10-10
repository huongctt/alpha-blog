class User < ApplicationRecord
    validates :username, presence: true, 
                        uniqueness: true, 
                        length: {minimum:1, maximum:5}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, 
                        length: { maximum:105},
                        format: {with: VALID_EMAIL_REGEX}
end