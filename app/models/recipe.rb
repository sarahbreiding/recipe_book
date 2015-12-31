class Recipe < ActiveRecord::Base
  has_and_belongs_to_many :tags
  default_scope { order("name ASC") }

    def self.search(params)
    recipes = all
    recipes = recipes.where("name ILIKE ?", "%#{params[:search]}%") if params[:search]
  end
end
