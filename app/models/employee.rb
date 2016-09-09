class Employee < User
	scope :submitted_yesterday, ->(user) { user.posts.where(date: Time.now.yesterday) }
end