class AddReferenceToTransactions < ActiveRecord::Migration
  def up
    #rake db:migrate (cuz we cant undo remove column)
      add_reference :transactions, :expense, index: true, foreign_key: true 
  end

  def down
    #rake db:rollback
      remove_reference :transactions, :expense, index: true, foreign_key: true 
  end
end
