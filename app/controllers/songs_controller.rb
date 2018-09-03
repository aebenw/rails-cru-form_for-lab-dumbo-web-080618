class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    set
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def edit
    set

  end

  def update
    set
    @song.update(song_params)
    @song.save
    redirect_to song_path(@song)
  end

  private

  def set
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

end
