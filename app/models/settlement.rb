class Settlement < ActiveRecord::Base
  belongs_to :payer, :class => User
  belongs_to :payee, :class => User
end
