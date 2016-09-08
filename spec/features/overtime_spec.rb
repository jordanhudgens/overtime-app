require 'rails_helper'

describe 'overtime calculations' do
	it 'calcaulates accurate overtime values for salaried employees' do
		thousand_34 = SalariedOvertimeCalculator.calculate weekly_salary: 1000.0, total_hours: 43.0
		nine_hundred_55 = SalariedOvertimeCalculator.calculate weekly_salary: 900.0, total_hours: 55.5
		expect(thousand_34.to_i).to eq(34)
		expect(nine_hundred_55.to_i).to eq(125)
	end

	it 'returns 0.0 for an overtime amount if the total hours are 40 or under' do
		forty_or_under = SalariedOvertimeCalculator.calculate weekly_salary: 900.0, total_hours: 40.0
		expect(forty_or_under.to_i).to eq(0)
	end
end