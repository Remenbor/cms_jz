class Permission < ApplicationRecord
  has_many :user_permissions
  has_many :users, through: :user_permission
end
