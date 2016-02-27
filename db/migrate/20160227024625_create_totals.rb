class CreateTotals < ActiveRecord::Migration
  def change
    create_table :totals do |t|
      t.decimal :total

      t.timestamps null: false
    end
  end
end
