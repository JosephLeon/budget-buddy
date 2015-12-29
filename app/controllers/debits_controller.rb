class DebitsController < ApplicationController
	def new
		@debit = Debit.new
	end

	def create
		@debit = Debit.new(debit_params)

		@debit.save
		
		respond_to do |format|
			format.html { redirect_to "/" }
			format.js
		end
	end

	def destroy
    @debit = Debit.find(params[:id])
    @debit.destroy

    respond_to do |format|
    	format.html { redirect_to "/" }
    	format.js
    end
  end

	private
		def debit_params
			params.require(:debit).permit(:name, :amount, :interval, :monthly_value)
		end
end
