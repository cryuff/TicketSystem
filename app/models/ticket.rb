class Ticket < ActiveRecord::Base
	belongs_to :seance
	belongs_to :customer
  belongs_to :spot
 	accepts_nested_attributes_for :customer
 	before_create :generate_token
  after_save :ticket_notification
	
 private
  def ticket_notification
    TicketMailer.send_ticket(self).deliver
  end
 protected
  def generate_token
    self.token = loop do
      random_token = SecureRandom.urlsafe_base64(nil, false)
      break random_token unless Ticket.exists?(token: random_token)
    end
  end

end
