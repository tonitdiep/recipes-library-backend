class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :cuisine_country
      t.integer :dietary_type
      t.integer :cook_time
      t.integer :spice_level
      t.integer :rating
      t.integer :serving_size
      t.integer :skill_level

      t.timestamps
    end
  end
end
