class CreditsController < ApplicationController
	def new
		@credit = Credit.new

		# respond_to do |format|
  #     format.html # new.html.erb
  #     format.json { render json: @credit }
  #     format.js
  #   end
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

    flash[:success] = "Credit deleted"
    redirect_to "/"
  end

  def index
  	@credits = Credit.all

  	if @credits
  		render json: @credits
  	end
  end

	private
	  def credit_params
	    params.require(:credit).permit(:name, :amount, :interval, :monthly_value)
	  end
end
