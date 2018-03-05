class Record < ApplicationRecord
  belongs_to :device, required: false
end
