class AddMonthlyValueToCredits < ActiveRecord::Migration
  def change
    add_column :credits, :monthly_value, :decimal
  end
end
