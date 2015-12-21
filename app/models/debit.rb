class Debit < ActiveRecord::Base
	before_save :calculate_monthly_value

	def calculate_monthly_value
		unless self.amount.blank?
			# 1 Yearly
			# 2 Monthly
			# 3 Bi-Monthly
			# 4 Weekly
			# 5 One Time
			case self.interval
			when "1"
				self.monthly_value = self.amount/12
			when "2"
				self.monthly_value = self.amount
			when "3"
				self.monthly_value = self.amount*2
			when "4"
				self.monthly_value = (self.amount*52)/12
			when "5"
				self.monthly_value = self.amount/12
			else
				self.monthly_value = self.amount
			end

		end
	end
end
