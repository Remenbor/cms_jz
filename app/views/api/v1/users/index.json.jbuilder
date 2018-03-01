#json.user do
#  json.(@user, :id, :name, :coding,  :role, :department_id, :sex, :age, :phone, :email, :state, :created_at, #:updated_at, :department, :permissions)
#end

json.user @users.each do |u|
  json.(u, :id, :name, :coding,  :role, :department_id, :sex, :age, :phone, :email, :state, :created_at, :updated_at, :department, :permissions)
end