class Credit < ActiveRecord::Base
	before_save :calculate_monthly_value

	after_commit :calculate_total_credits_store_in_total

	def calculate_total_credits_store_in_total
		# @total_debits = Debit.sum(:monthly_value)
		@total_credits = Credit.sum(:monthly_value)
		@total_debits = Debit.sum(:monthly_value)
		@monthly_balance = @total_credits - @total_debits

		if Total.exists?(1)
			# update the value of :total
			total = Total.find_by_id(1)
			total.update(total: @monthly_balance)
		else
			# create first record for Total
			total = Total.create(total: @monthly_balance)
		end
	end

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
