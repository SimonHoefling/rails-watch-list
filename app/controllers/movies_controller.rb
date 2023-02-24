class MoviesController < ApplicationController
  def index

  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path, notice: 'List was successfully created.'
    else
      render 'lists/show', status: :unprocessable_entity
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :overview, :poster_url, :rating)
  end
end
