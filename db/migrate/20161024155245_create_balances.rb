class CreateBalances < ActiveRecord::Migration
  def change
    create_table :balances do |t|
      t.text :title
      t.integer :amount
      t.timestamps null: true
    end
  end
end
