class AuthorsController < ApplicationController
  def new
  end

  def show
    @author = Author.find params[:id]
  end
end
