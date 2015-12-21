module HomeHelper
	def calculate_budget(total_credits, total_debits)
		@calculated_budget = total_credits - total_debits

		if @calculated_budget < 0
			@calculated_budget = number_to_currency(@calculated_budget)
  		@calculated_budget = "<span class='red'>#{@calculated_budget}</span>"
  	else
  		@calculated_budget = number_to_currency(@calculated_budget)
  		@calculated_budget = "<span class='green'>#{@calculated_budget}</span>"
  	end
	end
end
