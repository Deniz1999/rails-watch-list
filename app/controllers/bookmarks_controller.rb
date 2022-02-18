class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmarks.new
  end

  def create
    @bookmark = Bookmark.new
    # @bookmark.save
  end

  def destroy
    @bookmark.destroy
    redirect_to bookmarks_path
  end
end
