class DebitsController < ApplicationController
	def new
		@debit = Debit.new
	end

	def create
		@debit = Debit.new(debit_params)

		@debit.save
		redirect_to "/"
	end

	def destroy
    @debit = Debit.find(params[:id])
    @debit.destroy

    flash[:success] = "Debit deleted"
    redirect_to "/"
  end

	private
		def debit_params
			params.require(:debit).permit(:name, :amount, :interval, :monthly_value)
		end
end
