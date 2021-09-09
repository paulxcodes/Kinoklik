class Movie < ApplicationRecord
  has_many :actors
  attr_accessor :slug


  validates :title, presence: true, length: { maximum: 255 }

  # Slugify movie name into a url safe param before create
  # Ex: 'Star Wars'.parameterize => 'star-wars'
    before_create -> (movie) do
    movie.slug = movie.title.parameterize
  end


end
