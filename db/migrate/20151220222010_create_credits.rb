class CreateCredits < ActiveRecord::Migration
  def change
    create_table :credits do |t|
      t.string :name
      t.decimal :price
      t.string :interval

      t.timestamps null: false
    end
  end
end
