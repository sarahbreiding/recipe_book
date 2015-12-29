class TagsController < ApplicationController
  before_filter :set_tags, except: [:create, :update, :destroy]

  def index
    @recipes = Recipe.all
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)

    if @tag.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def new
    @tag = Tag.new
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    @tag = Tag.find(params[:id])
    if @tag.update(tag_params)
      redirect_to @tag
    else
      render 'edit'
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy

    redirect_to root_url
  end

  private
    def set_tags
      @tags = Tag.all
    end

    def tag_params
      params.require(:tag).permit(:name, :recipe_ids => [])
    end

end
