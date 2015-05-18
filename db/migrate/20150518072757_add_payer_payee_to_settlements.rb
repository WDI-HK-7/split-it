class AddPayerPayeeToSettlements < ActiveRecord::Migration
  def up
    add_column :settlements, :payee_id, :integer
    add_column :settlements, :payer_id, :integer
  end

  def down
    remove_column :settlements, :payee_id
    remove_column :settlements, :payer_id
  end
end
