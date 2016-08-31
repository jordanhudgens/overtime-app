class Hand < ApplicationRecord
	belongs_to :user
	belongs_to :hand, class_name: 'User'
end
