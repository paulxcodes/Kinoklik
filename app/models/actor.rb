class Actor < ApplicationRecord

  has_one :user
  has_one :actor_id
  has_many :movies

  validates :name, presence: true
  validates :biography, presence: true

end
