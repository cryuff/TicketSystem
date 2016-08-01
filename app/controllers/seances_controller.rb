class SeancesController < ApplicationController
	before_filter :get_movie

	def get_movie
		@movie = Movie.find(params[:movie_id])
	end
  
 
end
