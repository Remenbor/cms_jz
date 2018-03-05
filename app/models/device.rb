class Device < ApplicationRecord
  #belongs_to :user
  has_many :records

  def loan_record(device)
    Record.create(serial_num: device.serial_num, borrower: device.borrower, loan_date: Time.now.strftime('%Y-%m-%d'), return_date: "")
  end

  def update_state(state)
    self.update_attributes(state: state)
  end
end
