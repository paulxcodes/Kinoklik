class Rating < ApplicationRecord
  belongs_to :movie_id

  validates :stars, inclusion: { in: 1..5}
  validates :comment, presence:true
end
