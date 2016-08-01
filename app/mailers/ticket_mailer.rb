class TicketMailer < ActionMailer::Base
  default from: "cinema@migala.pl"


  def send_ticket(ticket)
    @ticket = ticket
    @customer = @ticket.customer

    mail to: @customer.email, subject: "Your ticket for: #{@ticket.seance.movie.title}"
  end
end
