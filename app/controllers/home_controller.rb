class HomeController < ApplicationController
  def index

    @recipes = Recipe.all.sort_by {rand}[0..9]
    @tags = Tag.all
  end

end
