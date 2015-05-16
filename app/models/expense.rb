class Expense < ActiveRecord::Base
  has_many :transactions
end