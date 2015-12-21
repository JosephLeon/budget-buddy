class CreditsController < ApplicationController
	def new
		@credit = Credit.new
	end

	def create
		@credit = Credit.new(credit_params)
		 
		@credit.save
		redirect_to "/"
	end

	def destroy
    @credit = Credit.find(params[:id])
    @credit.destroy

    flash[:success] = "Credit deleted"
    redirect_to "/"
  end

	private
	  def credit_params
	    params.require(:credit).permit(:name, :amount, :interval)
	  end
end
