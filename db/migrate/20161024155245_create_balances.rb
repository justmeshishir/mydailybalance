class CreateBalances < ActiveRecord::Migration
  def change
    create_table :balances do |t|
      t.text :title
      t.integer :amount
      t.date :date
      t.timestamps null: false
    end
  end
end
