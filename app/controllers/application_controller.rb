class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception
  before_action :authenticate
  before_filter :set_tags, except: [:create, :update, :destroy]

    def set_tags
      @tags = Tag.all
    end

    private
      def authenticate
        authenticate_user!
      end
end

