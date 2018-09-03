class GenresController < ApplicationController

  def index
    @genre = Genre.all
  end

  def show
    set
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(genre_params)
    redirect_to genre_path(@genre)
  end

  def edit
    set
  end

  def update
    set
    @genre.update(genre_params)
    @genre.save
    redirect_to genre_path(@genre)
  end

  private

  def set
    @genre = Genre.find(params[:id])
  end

  def genre_params
    params.require(:genre).permit(:name)
  end

end
