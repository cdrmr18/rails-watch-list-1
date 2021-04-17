class BookmarksController < ApplicationController
  def new 
    @bookmark = Bookmark.new()
    @list = List.find(params[:list_id])
  end
  def create
    @bookmark = Bookmark.new(bookmark_params)
  end

  def destroy
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:movie_id)
  end
end
