class AddBudgetToDebits < ActiveRecord::Migration
  def change
    add_column :debits, :budget, :boolean
  end
end
