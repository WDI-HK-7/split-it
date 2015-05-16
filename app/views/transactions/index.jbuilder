json.array! @transactions do |transaction|
  json.amount transaction.amount
  json.expense transaction.expense
  


end