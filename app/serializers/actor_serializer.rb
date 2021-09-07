class ActorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :created_at, :updated_at, :biography

  has_many :movies
end
