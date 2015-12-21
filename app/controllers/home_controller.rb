class HomeController < ApplicationController
  def index
  	@credits = Credit.all
  	@debits = Debit.all
  end
end
