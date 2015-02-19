class Meeting < ActiveRecord::Base
	belongs_to :firstyear 
  belongs_to :secondyear
  belongs_to :case
end
