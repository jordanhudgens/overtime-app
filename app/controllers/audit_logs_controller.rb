class AuditLogsController < ApplicationController
	def index
		@audit_logs = AuditLog.all
	end
end
