class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :email
      t.string :email_confirmation

      t.timestamps null: false
    end
  end
end
