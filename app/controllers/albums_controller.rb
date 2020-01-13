class AlbumsController < ApplicationController

  # Code for listing all albums goes here.
  def index
    @albums = Album.all
    render :index
  end


  # Code for new album form goes here.
  def new
    @album = Album.new
    render :new
  end


  # Code for creating a new album goes here.
  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to albums_path
    else
      render :new
    end
  end


    # Code for edit album form goes here.
    def edit
      @album = Album.find(params[:id])
      render :edit
    end

    # Code for showing a single album goes here.
    def show
        @album = Album.find(params[:id])
        render :show
      end

  def update
    # Code for updating an album goes here.
    def update
      @album= Album.find(params[:id])
      if @album.update(album_params)
        redirect_to albums_path
      else
        render :edit
      end
    end

  def destroy
    # Code for deleting an album goes here.
  end

##It's important that we include this code at the end of the class (just above the final end); we wouldn't want to accidentally make any of our controller actions private.
  private
    def album_params
      params.require(:album).permit(:name, :genre)
      ##This is the template "params.require(:<name-of-class>).permit(:<name-of-parameters-to-accept-separated-by-commas)""
    end
  end
end
