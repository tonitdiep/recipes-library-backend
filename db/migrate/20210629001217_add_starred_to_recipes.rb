class AddStarredToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :starred, :boolean, :default => false
  end
end
