class HatsController < ApplicationController

  def index
    @hats = Hat.all
    # @hats = policy_scope(Hat).order(created_at: :desc)
    @final_hats = []
    @hats.each do |hat|
      if hat.user == current_user
        @final_hats << hat
      elsif hat.public_visibility?
        @final_hats << hat
      end
    end
    @hat = Hat.new
  end

  def show
    @hat = Hat.find(params[:id])
    @allowed
    if @hat.user == current_user || @hat.public_visibility?
      @allowed = true
    else
      @allowed = false
    end
    @movie = Movie.new
  end

  def new
    @hat = Hat.new
    @hat.user = current_user
  end

  def create
    @hat = Hat.new(hat_params)
    @hat.user = current_user
    @hat.save
    redirect_to hat_path(@hat)
  end

  def pick_a_movie
    @picked_movie=''
    @hat = Hat.find(params[:hat_id])

    all_movies = @hat.movies
    @picked_movie = all_movies.sample
  end

  private

  def hat_params
    params.require(:hat).permit(:name, :photo)
  end

end
