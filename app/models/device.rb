class Device < ApplicationRecord
  belongs_to :user
  has_many :records
end
