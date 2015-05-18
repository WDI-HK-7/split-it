class AddPayerPayeeToTransactions < ActiveRecord::Migration
  def up
    add_column :transactions, :payee_id, :integer
    add_column :transactions, :payer_id, :integer
  end

  def down
    remove_column :transactions, :payee_id
    remove_column :transactions, :payer_id
  end

end
