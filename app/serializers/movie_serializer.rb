class MovieSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :slug, :description, :language, :release_date

  has_many :actors
end
