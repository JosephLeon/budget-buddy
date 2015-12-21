class HomeController < ApplicationController
  def index
  	@credits = Credit.all
  	@debits = Debit.all

  	@total_credits = Credit.sum(:monthly_value)
  	@total_debits = Debit.sum(:monthly_value)
  end
end
