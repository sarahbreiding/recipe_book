class RecipesController < ApplicationController

before_filter :set_tags, except: [:create, :update, :destroy]

def index
  if params[:search]
    @recipes = Recipe.search(params).paginate(:page => params[:page], :per_page => 25)
  else
    @recipes = Recipe.all.paginate(page: params[:page], per_page: 25)
  end
  @tags = Tag.all
end

def create
  @recipe = Recipe.new(recipe_params)

  if @recipe.save
    redirect_to @recipe
  else
    render 'new'
  end
end

def show
  @recipe = Recipe.find(params[:id])
end

def new
  @recipe = Recipe.new
  @tags = Tag.all
end

def edit
  @recipe = Recipe.find(params[:id])
  @tags = Tag.all
end

def update
  @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to @recipe
    else
      render 'edit'
    end
end

def destroy
  @recipe = Recipe.find(params[:id])
  @recipe.destroy

  redirect_to recipes_path
end

private
  def set_tags
    @tags = Tag.all
  end

  def recipe_params
    params.require(:recipe).permit(:name, :ingredients, :instructions, :cook_time, :prep_time, :source, :tag_ids => [])
  end

end
