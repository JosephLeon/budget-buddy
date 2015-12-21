class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # helper_method :calculate_budget
  # def calculate_budget
  # 	@current_budget = 200
  # 	if @current_budget < 0
  # 		@current_budget = '<span class="red">$200.00</span>'
  # 	else
  # 		@current_budget = '<span class="green">$200.00</span>'
  # 	end
  # end

end
