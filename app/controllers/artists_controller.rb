class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    set
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to artist_path(@artist)
  end

  def edit
    set

  end

  def update
    set
    @artist.update(artist_params)
    @artist.save
    redirect_to artist_path(@artist)
  end

  private

  def set
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

end
