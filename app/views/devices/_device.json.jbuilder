json.extract! device, :id, :name, :model, :serial_num, :buy_date, :age_limit, :borrower, :loan_date, :return_date, :state, :created_at, :updated_at
json.url device_url(device, format: :json)
