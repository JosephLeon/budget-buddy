class HomeController < ApplicationController

  def index
  	@credit = Credit.new
  	@credits = Credit.all
  	@debits = Debit.all



  	@total_credits = Credit.sum(:monthly_value)
  	@total_debits = Debit.sum(:monthly_value)
  	@difference_debit_takehome = 4400 - @total_debits
  	@monthly_balance = @total_credits - @total_debits
  end
end
