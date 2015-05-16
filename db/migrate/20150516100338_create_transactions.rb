class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.decimal :amount,    :precision => 6, :scale => 2
      t.timestamps null: false
    end
  end
end
