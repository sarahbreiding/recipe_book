class RecipeTag < ActiveRecord::Base
  belongs_to :tags
  belongs_to :recipes
end
