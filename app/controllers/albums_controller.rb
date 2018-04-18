class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def show
   @album = Album.find(params[:id])
   @songs = Song.all
   @song = Song.find(@album.id)
 end

  def create
    @album = Album.new(album_params)
    if @album.save
      flash[:notice] = "Artist successfully added!"
      redirect_to  albums_path
    else
      flash[:alert] = "Sorry, error!"
      render :new
    end
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album= Album.find(params[:id])
    if @album.update(album_params)
      redirect_to albums_path
    else
      render :edit
    end
  end

private
  def album_params
    params.require(:album).permit(:artist_name, :album_name, :genre)
  end
end
