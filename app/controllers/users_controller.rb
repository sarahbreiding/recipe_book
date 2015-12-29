class UsersController < ApplicationController
  before_filter :set_tags, except: [:create, :update, :destroy]
  private
    def set_tags
      @tags = Tag.all
    end
end
