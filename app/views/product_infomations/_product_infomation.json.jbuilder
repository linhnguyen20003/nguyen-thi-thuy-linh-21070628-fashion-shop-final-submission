json.extract! product_infomation, :id, :name, :description, :size, :quantity, :price, :order_date, :created_at, :updated_at
json.url product_infomation_url(product_infomation, format: :json)
