json.extract! employee, :id, :name, :position, :phone_number, :email, :address, :order_information_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
