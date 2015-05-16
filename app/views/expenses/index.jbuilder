json.array! @expenses do |expense|
  json.id expense.id
  json.expense_name expense.expense_name
  json.total_amount expense.total_amount
  
  json.transactions expense.transactions do |transaction|
    json.amount transaction.amount
  end

end