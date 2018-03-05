class UserPermission < ApplicationRecord
  belongs_to :user, required: false
  belongs_to :permission, required: false
end