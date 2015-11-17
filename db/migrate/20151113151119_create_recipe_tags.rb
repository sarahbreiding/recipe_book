class CreateRecipeTags < ActiveRecord::Migration
  def change
    create_table :recipe_tags, :id => false do |t|
      t.integer :recipe_id
      t.integer :tag_id

      t.timestamps null: false
    end
  end
end
