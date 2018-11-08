class AuthorsController < ApplicationController
  def new
  end

  def show
    @author = Author.find params[:id]
  end

  def index
    @authors = Author.all
  end
end
