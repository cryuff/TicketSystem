class Seance < ActiveRecord::Base
	belongs_to :hall
	belongs_to :movie
	belongs_to :price
	has_many :tickets
end
