class TransactionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @transactions = Transaction.order(created_at: :desc).offset(params[:offset]).includes(:expense)
  end

  def create
    @transaction = Transaction.new(post_params)
    if @transaction.save
      render :json => { message: "saved" }
    else
      render :json => { message: "not saved" }
    end
  end

  private

  def post_params
    params.require(:transaction).permit(:amount, :expense_id)
  end

end
