class ExpensesController < ApplicationController
  before_action :authenticate_user!

  def index
    @expenses = Expense.order(created_at: :desc).offset(params[:offset]).includes(:transactions)
  end

  def create
    @expense = Expense.new(expense_params)

    # Expense.transaction do
      if @expense.save
        @transaction = @expense.transactions.new(transaction_params)
        @transaction.payer = current_user

        if @transaction.save
        render :json => { message: "saved", status: true }
        else
        render :json => { message: "not saved", status: false }
        end
      end
    # end
  end

  private

  def expense_params
    params.require(:expense).permit(:expense_name, :total_amount)
  end

  def transaction_params
    params.require(:transaction).permit(:amount, :payee_id)
  end

end
