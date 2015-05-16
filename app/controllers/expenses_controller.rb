class ExpensesController < ApplicationController
  before_action :authenticate_user!

  def index
    @expenses = Expense.order(created_at: :desc).includes(:transactions)
  end

end
