class StaticController < ApplicationController
	def homepage
		@pending_approvals = Post.where(status: 'submitted')
		@recent_audit_items = AuditLog.last(10)
	end
end