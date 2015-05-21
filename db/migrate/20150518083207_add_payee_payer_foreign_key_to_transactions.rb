class AddPayeePayerForeignKeyToTransactions < ActiveRecord::Migration
  def up
    add_foreign_key :transactions, :users, column: :payer_id, primary_key: :id
    add_foreign_key :transactions, :users, column: :payee_id, primary_key: :id
  end

  def down
    remove_foreign_key :transactions, :users, column: :payer_id, primary_key: :id
    remove_foreign_key :transactions, :users, column: :payee_id, primary_key: :id
  end
end
