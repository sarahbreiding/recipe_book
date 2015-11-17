class HomeController < ApplicationController
  def index
    @recipes = Recipe.all
    @tags = Tag.all
  end
end
