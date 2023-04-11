json.extract! customer, :id, :name, :gender, :date_Of_Birth, :email, :phone_number, :address, :created_at, :updated_at
json.url customer_url(customer, format: :json)
