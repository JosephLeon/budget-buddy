class CreateSavings < ActiveRecord::Migration
  def change
    create_table :savings do |t|
      t.decimal :percentage
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
