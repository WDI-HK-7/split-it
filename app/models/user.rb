class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def transactions
    Transaction.where("payee_id = ? OR payer_id = ?", self.id, self.id)
  end

  def settlements
    Settlement.where("payee_id = ? OR payer_id = ?", self.id, self.id)
  end

end