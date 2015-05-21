class Transaction < ActiveRecord::Base
  belongs_to :expense

  belongs_to :payer, :class => User
  belongs_to :payee, :class => User
end