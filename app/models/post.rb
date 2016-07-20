class Post < ActiveRecord::Base
	validates_presence_of :date, :rationale
end
