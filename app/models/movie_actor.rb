class MovieActor < ApplicationRecord

  has_many :movies
  has_one :user_id

end
