class CreditsController < ApplicationController
	def new
		@credit = Credit.new
	end

	def create
		@credit = Credit.new(credit_params)
		 
		@credit.save
		redirect_to @credit
	end

	private
	  def credit_params
	    params.require(:credit).permit(:name, :amount, :interval)
	  end
end
