json.extract! record, :id, :serial_num, :borrower, :loan_date, :return_date, :created_at, :updated_at
json.url record_url(record, format: :json)
