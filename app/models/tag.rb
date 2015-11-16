class Tag < ActiveRecord::Base
  has_and_belongs_to_many :recipes
  default_scope { order("name ASC") }
end
