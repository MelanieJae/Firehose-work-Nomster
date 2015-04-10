class Place < ActiveRecord::Base
	self.per_page = 1
	belongs_to :user
end


