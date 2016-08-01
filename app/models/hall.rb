class Hall < ActiveRecord::Base
	has_many :seances
	has_many :spots
end
