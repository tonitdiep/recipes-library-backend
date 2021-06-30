

class RecipeSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :cuisine_country, :dietary_type, :cook_time, :spice_level, :serving_size, :skill_level, :starred
end
