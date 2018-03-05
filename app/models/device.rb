class Device < ApplicationRecord
  belongs_to :user, required: false
  has_many :records
  after_save :loan_record

  def loan_record
    Record.create(serial_num: self.serial_num, borrower: self.borrower, loan_date: Time.now.strftime('%Y-%m-%d'), return_date: "")
  end

  def update_state(state)
    self.update_attributes(state: state)
  end
end
