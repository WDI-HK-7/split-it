class ExpensesController < ApplicationController
  before_action :authenticate_user!

  def index
    @expenses = Expense.order(created_at: :desc).includes(:transactions)
  end

  def create
    @expense = Expense.new(post_params)
    if @expense.save
      render :json => { message: "saved", status: true }
    else
      render :json => { message: "not saved", status: false }
    end
  end

  private

  def post_params
    params.require(:expense).permit(:expense_name, :total_amount)
  end

end
