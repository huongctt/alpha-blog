class Article < ApplicationRecord
    validates :title, presence: true #not null 
    validates :description, presence: true, length: {minimum:1 , maximum:100}

end