class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :calculate_budget
  def calculate_budget
  	@current_budget = 'Plus $200.00'
  end

end
