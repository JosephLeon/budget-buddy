class CreditsController < ApplicationController
	def new
		@credit = Credit.new
	end

	def create
		@credit = Credit.new(credit_params)
		 
		@credit.save

		respond_to do |format|
			format.html { redirect_to "/" }
			format.js
		end
	end

	def destroy
    @credit = Credit.find(params[:id])
    @credit.destroy

    respond_to do |format|
    	format.html { redirect_to "/" }
    	format.js
    end
  end

	private
	  def credit_params
	    params.require(:credit).permit(:name, :amount, :interval, :monthly_value)
	  end
end
