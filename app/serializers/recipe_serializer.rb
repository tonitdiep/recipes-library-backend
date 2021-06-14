class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :dietary_type, :cuisine_country, :spice_level
end
