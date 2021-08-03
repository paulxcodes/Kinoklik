class Genre < ApplicationRecord

  GENRES = ["action", "comedy", "documentary", "romance", "action", "horror", "mistery", "drama"]

  has_many :movies

  validates :genre, inclusion: { in: GENRES + [nil] }
end
