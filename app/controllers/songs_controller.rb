class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def show
    @song = Song.find(params[:id])
  end

  def create
    @album = Album.find(params[:album_id])
    @song = @album.songs.new(song_params)
    if @song.save
      flash[:notice] = "Song successfully added!"
      redirect_to album_path(@album)
    else
      flash[:alert] = "Sorry, error!"
      render :new
    end
  end

private
  def song_params
    params.require(:song).permit(:title)
  end
end
