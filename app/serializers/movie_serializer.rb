class MovieSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :language, :release_date, :create_at, :updated_at

  has_many :actors
end
