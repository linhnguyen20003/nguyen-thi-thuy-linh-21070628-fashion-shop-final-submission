json.extract! customer_infomation, :id, :name, :date_of_birth, :gender, :email, :citizen_identification, :phone_number, :address, :created_at, :updated_at
json.url customer_infomation_url(customer_infomation, format: :json)
