json.array!(@expenses) do |expense|
  json.extract! expense, :eid, :edate, :category, :item_name, :amount, :quantity
  json.url expense_url(expense, format: :json)
end
