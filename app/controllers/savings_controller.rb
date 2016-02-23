class SavingsController < ApplicationController
	def new
		@saving = Saving.new
	end

	def create
		@saving = Saving.new(saving_params)

		@saving.save
		
		respond_to do |format|
			format.html { redirect_to "/" }
			format.js
		end
	end

	def destroy
    @saving = Saving.find(params[:id])
    @saving.destroy

    respond_to do |format|
    	format.html { redirect_to "/" }
    	format.js
    end
  end

	private
		def saving_params
			params.require(:saving).permit(:name, :percentage, :description)
		end
end
