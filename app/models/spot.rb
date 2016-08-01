class Spot < ActiveRecord::Base
	belongs_to :hall
	has_many :tickets

  def next
    self.class.where("id > ?", id).first
  end

  def previous
    self.class.where("id < ?", id).last
  end

  def  row_with_column
  	"Column: #{column} Row:#{row}"
  end


end
