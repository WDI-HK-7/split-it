class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :event_id
      t.string :payer
      t.string :payee
      t.decimal :amount, precision:5 , scale: 2
      t.timestamps null: false
    end
  end
end
