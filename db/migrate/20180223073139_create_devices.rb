class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.string :name
      t.string :model
      t.string :serial_num
      t.date :buy_date
      t.integer :age_limit
      t.string :borrower
      t.date :loan_date, default: nil
      t.date :return_date, default: nil
      t.integer :state, default: 0

      t.timestamps
    end
  end
end
