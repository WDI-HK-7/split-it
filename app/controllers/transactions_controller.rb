class TransactionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @transactions = Transaction.order(created_at: :desc).offset(params[:offset]).includes(:expense)
  end

end
