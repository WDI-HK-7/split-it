class ExpensesController < ApplicationController
  before_action :authenticate_user!

  def index
    @expenses = Expense.order(created_at: :desc).offset(params[:offset]).includes(:transactions)
  end

  def create
    @expense = Expense.new(expense_params)

    if @expense.save
      render :json => { expense_id: @expense.id, message: "saved", status: true }
    else
      render :json => { message: "not saved", status: false }
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:expense_name, :total_amount)
  end

end
