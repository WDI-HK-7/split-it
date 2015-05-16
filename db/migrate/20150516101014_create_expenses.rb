class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :expense_name
      t.decimal :total_amount,    :precision => 6, :scale => 2
      t.timestamps null: false
    end
  end
end