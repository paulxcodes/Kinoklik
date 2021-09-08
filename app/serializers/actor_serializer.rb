class ActorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :biography

  attribute :email do |object|
    object&.user&.email
  end
end
