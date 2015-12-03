class UsersController < ApplicationController
    before_filter :set_tags, except: [:create, :update, :destroy]

    def set_tags
    @tags = Tag.all
  end
end
