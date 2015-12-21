class AddMonthlyValueToDebits < ActiveRecord::Migration
  def change
    add_column :debits, :monthly_value, :decimal
  end
end
