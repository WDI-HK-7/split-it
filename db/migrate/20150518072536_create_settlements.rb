class CreateSettlements < ActiveRecord::Migration
  def change
    create_table :settlements do |t|
      t.integer :amount
      t.timestamps null: false
    end
  end
end
