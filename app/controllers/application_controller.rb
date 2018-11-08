class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def create
    @article = Author.new author_params
     
    @article.save
    #redirect_to @article
  end

  private
    def author_params
      params.require(:author).permit(:first_name,:last_name,:homepage)
    end
end
