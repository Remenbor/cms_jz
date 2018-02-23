class CreateUserPermission < ActiveRecord::Migration[5.1]
  def change
    create_table :user_permissions do |t|
      t.integer :user_id
      t.integer :permission_id
    end
  end
end
