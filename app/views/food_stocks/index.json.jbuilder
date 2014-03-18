json.array!(@food_stocks) do |food_stock|
  json.extract! food_stock, :id, :food_id, :user_id, :quantity
  json.url food_stock_url(food_stock, format: :json)
end
