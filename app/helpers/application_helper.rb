module ApplicationHelper
	def active?(path)
		"active" if current_page?(path)
	end
end
