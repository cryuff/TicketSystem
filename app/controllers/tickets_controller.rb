class TicketsController < ApplicationController
	before_filter :get_seance, :get_movie

	def get_seance
		@seance = Seance.find(params[:seance_id])
	end
	
	def get_movie
		@movie = Movie.find(params[:movie_id])
	end

	def new
		@ticket=Ticket.new
		@ticket.build_customer
	end

	def create
		 @ticket = @seance.tickets.new(ticket_params)
		 if @ticket.save
		 	redirect_to "http://localhost:3000"
		 end
	end

	def show
		@ticket=Ticket.find(params[:id])
	end

	def show
		@seance=@movie.seances.find(params[:id])
  	end

  private

    def ticket_params
      params.require(:ticket).permit(:spot_id, :reducedprice, :customer_id, :seance_id,:token, customer_attributes: [:name, :surname, :email] )
    end
    
end
