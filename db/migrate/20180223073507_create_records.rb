class CreateRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :records do |t|
      t.string :serial_num
      t.string :borrower
      t.date :loan_date
      t.date :return_date

      t.timestamps
    end
  end
end
