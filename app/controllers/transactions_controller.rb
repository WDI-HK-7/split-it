class TransactionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @transactions = Transaction.order(created_at: :desc).offset(params[:offset]).includes(:expense)
  end

  def create
    transaction_params.each do |params|
      @transaction = Transaction.new(params)
      if @transaction.save
        render :json => { message: "saved" }
      else
        render :json => { message: "not saved" }
      end
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:payee, :payer, :amount, :expense_id)
  end

end
