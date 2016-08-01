class MoviesController < ApplicationController
	def index
		@movies=Movie.take(6)
		@moviesall=Movie.all
	end
	def show
		@movie=Movie.find(params[:id])
	end
private 
	def movie_params
      params.require(:movie).permit(:title, :description, :director, :length, :genre_id, :poster)
    end
end
