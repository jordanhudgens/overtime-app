class AuditLogsController < ApplicationController
	def index
		@audit_logs = AuditLog.all
		authorize @audit_logs
	end
end
