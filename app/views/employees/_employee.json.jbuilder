json.extract! employee, :id, :employee_name, :position, :email, :contact, :created_at, :updated_at
json.url employee_url(employee, format: :json)
