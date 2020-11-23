class MoviesController < ApplicationController

  def new
    @hat = Hat.find(params[:hat_id])
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @hat = Hat.find(params[:hat_id])
    @movie.hat = @hat
    @movie.save
    redirect_to hat_path(@hat)
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :photo)
  end


end
