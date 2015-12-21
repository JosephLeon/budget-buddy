class CreateDebits < ActiveRecord::Migration
  def change
    create_table :debits do |t|
      t.string :name
      t.decimal :amount
      t.string :interval

      t.timestamps null: false
    end
  end
end
