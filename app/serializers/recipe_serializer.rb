class RecipeSerializer
  include JSONAPI::Serializer
  # attributes :name, :cuisine_country, :dietary_type, :spice_level, :serving_size, :skill_level
  attributes :id, :name, :dietary_type, :cuisine_country, :spice_level
end
