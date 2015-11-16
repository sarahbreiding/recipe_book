class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :ingredients
      t.text :instructions
      t.string :prep_time
      t.string :cook_time
      t.string :source
      t.integer :tag_id

      t.timestamps null: false
    end
  end
end
