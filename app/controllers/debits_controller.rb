class DebitsController < ApplicationController
	def new
		@debit = Debit.new
	end
end
