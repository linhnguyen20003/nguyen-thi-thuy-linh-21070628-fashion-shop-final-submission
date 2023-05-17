json.extract! cart, :id, :date_of_creation, :last_updated, :cart_item_id, :total_price, :created_at, :updated_at
json.url cart_url(cart, format: :json)
