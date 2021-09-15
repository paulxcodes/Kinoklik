class Movie < ApplicationRecord


  has_many :movie_genres
  has_one :movie_id
  has_many :actors
  has_one :user_id

  has_one_attached :movie_image

  validates :title, presence: true
  validates :description, presence: true
  validates :language, presence: true
  validates :release_date, presence: true

end
