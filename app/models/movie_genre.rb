class MovieGenre < ApplicationRecord

  has_many :genres
  belongs_to :movies
end
