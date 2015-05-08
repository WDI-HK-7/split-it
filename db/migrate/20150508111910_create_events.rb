class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.decimal :amount, precision:5 , scale: 2
      t.string :event_name
      t.string :transaction_name
      t.string :transaction_type
      t.timestamps null: false
    end
  end
end
