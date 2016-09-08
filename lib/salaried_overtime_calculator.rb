module SalariedOvertimeCalculator
  def self.calculate weekly_salary:, total_hours:
  	return 0.0 if total_hours <= 40
  	((weekly_salary / total_hours) / 2.0) * (total_hours - 40)
	end
end