class Device < ApplicationRecord
  belongs_to :user, required: false
  has_many :records
  after_save :loan_record, on: :update

  def loan_record
    Record.create(serial_num: self.serial_num, borrower: self.borrower, loan_date: Time.now.strftime('%Y-%m-%d'), return_date: Time.now+1.year)
  end

  def update_state(state, borrower)
    self.update_columns(state: state, borrower: borrower)
  end

end
