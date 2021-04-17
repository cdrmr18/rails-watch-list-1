class BookmarksController < ApplicationController
  def create
    @list = List.new(params[:id])
    @movie = Movie.new()
    @bookmark = Bookmark.new(@list,  @movie)
  end

  def destroy
  end
end
