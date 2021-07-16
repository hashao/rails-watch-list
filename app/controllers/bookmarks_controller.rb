class BookmarksController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @list = List.find(params[:list_id])
    @bookmark.list = @list

    if @bookmark.save
      redirect_to list_path(@list)
    else
      render 'new'
    end
  end

  def destroy
    @list = List.find(@bookmark.list_id)
    @bookmark.destroy
    redirect_to list_path(@list), notice: 'Bookmark was successfully destroyed.'
  end


  private

    def bookmark_params
      params.require(:bookmark).permit(:comment, :rating, :movie_id)
    end

    private
    def set_bookmark
      @bookmark = Bookmark.find(params[:id])
    end
end
