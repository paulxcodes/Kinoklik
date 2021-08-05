class Movie < ApplicationRecord


  has_many :movie_genres
  has_one :movie_id
  has_many :actors
  has_one :user_id

  validates :title, presence: true
  validates :description, presence: true
  validates :language, presence: true
  validates :release_date, presence: true

end
