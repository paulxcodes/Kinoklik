class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :actor
  has_many :movies

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def full_name
    name = first_name.capitalize + " " + last_name.capitalize
  return name
  end

end
