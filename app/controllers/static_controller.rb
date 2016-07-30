class StaticController < ApplicationController
	def homepage
		@pending_approvals = Post.where(status: 'submitted')
	end
end