class HomeController < ApplicationController

  def index
  	@credit = Credit.new
  	@credits = Credit.all
  	@debits = Debit.all
  	@savings = Saving.all

  	@total_credits = Credit.sum(:monthly_value)
  	@total_debits = Debit.sum(:monthly_value)
  	@monthly_balance = @total_credits - @total_debits
  end
end
