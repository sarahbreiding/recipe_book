class HomeController < ApplicationController
  def index
    @recipes = Recipe.all.sort_by {rand}[0..19]
    @tags = Tag.all
  end
end
