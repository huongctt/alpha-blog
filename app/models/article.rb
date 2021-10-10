class Article < ApplicationRecord
    belongs_to :user
    validates :title, presence: true #not null 
    validates :description, presence: true, length: {minimum:1 , maximum:100}

end