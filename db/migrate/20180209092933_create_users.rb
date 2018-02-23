class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :coding
      t.integer :department_id
      t.string :role
      t.integer :sex
      t.integer :age
      t.string :phone
      t.string :email
      t.integer :state

      t.timestamps
    end
  end
end
