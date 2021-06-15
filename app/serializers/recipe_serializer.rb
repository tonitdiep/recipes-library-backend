class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :cuisine_country, :dietary_type, :time_to_cook, :spice_level, :serving_size, :skill_level
end
